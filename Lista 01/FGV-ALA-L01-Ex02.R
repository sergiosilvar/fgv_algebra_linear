# Exercicio 2.

A = matrix(c(1, 0, 1, 2, 1, 1, 3, 1, 2, 3, 2, 1),c(4,3),byrow=T)
b = c(1,2,3,1)

# Solução do sistema linear Ax=b
a = solve(A,b) 
cbind(A,c)