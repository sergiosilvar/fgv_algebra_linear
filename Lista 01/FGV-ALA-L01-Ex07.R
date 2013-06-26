# Retorna a matriz triangular inferior de uma matriz como parâmetro.
random_matrix <- function(n) {
  matrix(sample(1:n^2),c(n,n))
}


# Resolve um sistema aleatorio A.x=b de tamanho n onde A é nxn e b é 1xn.
solve_random <- function(n){
  A = random_matrix(n)
  b = sample(1:n,n)
  
  return(system.time(solve(A,b)))
}



# INÍCIO DO PROGRAMA.
n = 2^seq(11,13)
t = sapply(n, function(n) solve_random(n))
t = t[3,]
log_n = log2(n[t>1])
log_t = log2(t[t>1])
plot(log_n,log_t,type='b' )

# Regressao linear para determinar inclinação.
# Fonte: http://www.cyclismo.org/tutorial/R/linearLeastSquares.html
fit = lm(log_t ~ log_n)
On = fit$coefficients[[2]] # Inclinação é a complexidade.

# Resultado. Leva 10 min.
#n = 2^c(11:13)
#t = c(6.53,55.65,455.59)
