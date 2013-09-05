# call(prepare.R) # If needed------------------------------
require(zoo) # for lagging series
# This calculates the forward rate and the profits--------
forp <- function(fx, b, m){
  M <- paste(m, "M", sep = "")
  ra <- paste(fx, M, sep = "")
  ra2 <- paste(b, M, sep = "")
# this line to to name the column in the dataframe but does not work yet
  fw <- paste(ra, "f", sep = "")
  title <- paste(fx, "-", b, "fw", sep = "")
  das <- subset(da, select = c(fx, ra, ra2))
  das$fw <- ((1 + das[,2]/100)^(m/12))/((1 + das[,3]/100)^(m/12))*das[,1]
  plot(da[,4], type = 'l', main = fw)
  daz <- as.zoo(das)
  daz$l <- lag(daz[,1], k = m)
  daz$p <- ((daz[,1]*(1 + daz[,2]/100)^(m/12))*(1/daz[,5]))/
    (1 + daz[,3]/100)^(m/12)
  return(daz)
}
das <- forp(fx = "RON", b = "EUR", m = 3)
head(das)
plot(das$p, type = 'l', )
