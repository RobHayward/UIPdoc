# call(prepare.R) # If needed------------------------------
require(zoo) # for lagging series
require(xtable) # to create table
# This calculates forward rate and the profits and creates data frame--------
forp <- function(fx, b, m){
  M <- paste(m, "M", sep = "")
  ra1 <- paste(fx, M, sep = "")
  ra2 <- paste(b, M, sep = "")
# this line to to name the column in the dataframe but does not work yet
  fw <- paste(ra1, "f", sep = "")
  title <- paste(fx, "-", b, "fw", sep = "")
  das <- subset(da, select = c(fx, b, ra1, ra2, "VIX"))
  das$fw <- ((1 + das[,3]/100)^(m/12))/((1 + das[,4]/100)^(m/12))*(das[,1]/das[,2])
  daz <- as.zoo(das)
  daz$l1 <- lag(daz[,1], k = m)
  daz$l2 <- lag(daz[,2], k = m)
  daz$p <- (((daz[,1]/daz[,2])*(1 + daz[,3]/100)^(m/12))*(daz[,8]/daz[,7]))/
    (1 + daz[,4]/100)^(m/12)
  g <- list(data = daz, fx = fx, fund = b, period = M)
  return(g)
}
d <- forp(fx = "PLN", b = "USD", m = 1)
# Create data frame for CMchart2---------------------
d <- forp(fx = "CZK", b = "USD", m = 3)
title <- paste("P", d[2], d[3], d[4], sep = "")
assign(title, d$data)
head(d$data)
head(get(title))
save <- head(d$data)
save