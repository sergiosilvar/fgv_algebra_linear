B =matrix(seq(1,16),c(4,4),byrow=T)
I=diag(dim(B)[1])

# Letra a: Multiplicar coluna 1 por 2.
a = I
a[1,1] = 2
show(B%*%a)

# Letra b: Dividir linha 1 por 3.
b = I
b[1,1] = 1/3
show(b%*%B)

# Letra c: Adicionar a linha 3 à linha 1
c = I
c[1,3] = 1
show(c%*%B)

# Letra d: Trocar colunas 1 e 4.
d = I
d[1,1] = 0; d[4,1] = 1
d[4,4] = 0; d[1,4] = 1
show(B%*%d)

# Letra e: Subtratir linha 2 das demais linhas.
e = I
e[,2] = -1
e[2,2] = 1
show(e%*%B)

# Letra f: Substituir a coluna 4 pela coluna 3.
f = I
f[3,3] = 0; f[4,4] = 0
f[3,4] = 1; f[4,3] = 1
show(B%*%f)

# Letra g: eliminar a coluna 1.
g = I[,2:4]
show(B%*%g)


# Resultado como produto de 3 matrizes.
ecb = e%*%c%*%b

adfg = a%*%d%*%f%*%g

# Criar matriz Latex.
require('xtable')
x=xtable(adfg,align=rep("",ncol(adfg)+1)) # We repeat empty string 6 times
print(x, floating=F, tabular.environment="bmatrix", 
        qhline.after=NULL, include.rownames=FALSE, include.colnames=FALSE)

