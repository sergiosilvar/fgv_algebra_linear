# Exercicio 1.
# Criar matriz com repetição: http://www.ats.ucla.edu/stat/r/library/matrix_alg.htm
# Opções de plot http://www.statmethods.net/advgraphs/axes.html

# Construir matrizes A e b.
l = c(0,1,2,3)
A = c()
for( i in 1:length(l)){  
  A = cbind(A,l^(i-1))
}
b = c(1,0,-1,2)

# Solução do sistema linear Ax=b
a = solve(A,b) 



X = cbind(A[,2],b) # Pontos originais.

x=seq(0,3,0.01)

Pn = a[1]+a[2]*x+a[3]*x^2+a[4]*x^3
# create extra margin room on the right for an axis 
par(mar=c(5, 4, 4, 5) + 0.1)
plot(X,type='p',col='red')
lines(x,Pn,type='l',col='blue')

# Eixo esquerdo.
axis(2,col.axis='red')

# Eixo direito.
axis(4,col.axis='blue',las=0)

# add a title for the right axis 
mtext("Polinômio", side=4, line=3, cex.lab=1, las=0, col="blue")

title('Exercício 1', ylab='Pontos', xlab='x')
