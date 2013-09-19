# called mystatsm becuase it is modified to calculate annualised return.  
# This has to be input.
mystatsm <- function(x, na.omit=FALSE){
  if (na.omit)
    x <- x[!is.na(x)]
  n <- length(x)
  m <- mean(x)
  s <- sd(x) 
  t <- (m-1)/(s/n^0.5)
  med <- median(x)
  skew <- sum((x-m)^3/s^3)/n
  ses <- ((6*n*(n-1))/((n-1)*(n+1)*(n+3)))^0.5
  kurt <- sum((x-m)^4/s^4)/n - 3
  sek <- ((n^2-1)/((n-3)*(n + 5)))^0.5
  max <- max(x)
  min <- min(x)
  return(c(n=n, 100*(mean=(m^12)-1), t= t, medium = med, stdev=s, skew=skew, ps = 2*ses, 
           kurtosis=kurt, pk = 2*sek, max = 100*(max-1), min = 100*(min-1)))
}