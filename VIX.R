da <- read.csv("./UIP.csv", header=TRUE, na.strings = NA)
# VIX quantiles----------------------------------------------
summary(da$VIX)
quantile(da$VIX, 0.9)
quantile(da$VIX, 0.6)
#Create VIX chart--------------------------------------------
require(zoo)
da$DATE <- as.Date(da$DATE, format = "%d/%m/%Y")
daz <- as.zoo(da[28], order.by = da$DATE)
head(daz)
pdf("VIX2.pdf", paper= "a4", width = 10, title = "VIX")
par(omi = c(0,0,0,0))
plot(daz$VIX, type = 'l', main = "VIX Index", ylab = "VIX", 
     xlab = "Date")
abline(h = 30, col = 'red')
# text does not work with zoo (label?)
text(x = 105, y = 33, labels = "VIX index = 30", col = 'red')
abline(h = 20, col = 'blue')
# text(x = 2004-01-31, y = 22, labels = "VIX index = 20", col = 'blue') 
dev.off()
# Subset for Crisis (C) and Moderation (M)---------------------------
dah <- subset(da, VIX > 30)
dal <- subset(da, VIX < 20)
