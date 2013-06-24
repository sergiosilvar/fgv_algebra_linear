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

executar <- function(){
  n <- 2^c(4:13)
  t = sapply(n, function(n) solve_random(n))
  t = t[3,]
  plot(log2(n),log2(t),type='b' )
  return(t)
}

# INÍCIO DO PROGRAMA.

executar()

