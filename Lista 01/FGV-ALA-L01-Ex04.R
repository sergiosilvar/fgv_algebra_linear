# Retorna a matriz triangular inferior de uma matriz como parâmetro.
lowtri <- function(matr) {
  lt <- matrix(0, nrow=nrow(matr), ncol=ncol(matr))
  for (i in 1:nrow(matr)) {
    for (j in 1:i) {
      lt[i,j] <- matr[i,j]
    }
  }
  return(lt)
}

A = lowtri(matrix(sample(1:3^3,9),c(3,3)))
B = lowtri(matrix(sample(1:3^3,9),c(3,3)))

C=A%*%B

require('xtable')
x=xtable(C,align=rep("",ncol(C)+1)) # We repeat empty string 6 times
print(x, floating=F, tabular.environment="bmatrix", 
      qhline.after=NULL, include.rownames=FALSE, include.colnames=FALSE)


