# Create Crisis (C) and Moderation (M) charts--------------------------
# This is an update of CMChart to prepare Crisis and Moderation charts for 
# the Bournemouth paper.  pdf labelled a (1 and 2) is for the paper. 
# CHF =======================================
# add the investment (fx) and funcing (b) and length (m)
d <- forp(fx = "PLN", b = "CHF", m = 1)
# Subset for Crisis (C) and Moderation (M)
Datac <- subset(d$data, VIX > 30)
Datam <- subset(d$data, VIX < 20)
pdf("hist1a.pdf", paper= "a4", width = 9, title = "PLN Carry trade")
par(mfcol=c(2,2), oma = c(0,0, 0,0))
plot(density(Datac$p, na.rm = TRUE), main = "PLNCHF Carry Trade", 
     col = 'red', lwd= 2, xlim = c(0.80, 1.15))
abline(v = mean(Datac$p))
text(x = .94, y = 2, labels = "Mean")
plot(density(Datam$p, na.rm = TRUE), main = "PLNCHF carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.80, 1.15))
abline(v = mean(Datam$p, na.rm = TRUE))
text(x = 1.02, y = 14, labels = "Mean")
# USD ------------------------------------------------
d <- forp(fx = "PLN", b = "USD", m = 1)
# Subset for Crisis (C) and Moderation (M)---------------------------
Datac <- subset(d$data, VIX > 30)
Datam <- subset(d$data, VIX < 20)
plot(density(Datac$p, na.rm = TRUE), main = "PLNUSD carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.75, 1.15))
abline(v = mean(Datac$p))
text(x = .94, y = 6.5, labels = "Mean")
plot(density(Datam$p, na.rm = TRUE), main = "PLNUSD carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.75, 1.15))
abline(v = mean(Datam$p, na.rm = TRUE))
text(x = .98, y = 1, labels = "Mean")
dev.off()
# Second graph ---------------------------------------------------------------------
# JPY-------
d <- forp(fx = "PLN", b = "JPY", m = 1)
# Subset for Crisis (C) and Moderation (M)
Datac <- subset(d$data, VIX > 30)
Datam <- subset(d$data, VIX < 20)
pdf("hist2a.pdf", paper= "a4", width = 9, title = "PLN carry in crisis")
par(mfcol=c(2,2), oma = c(0,0, 0,0))
plot(density(Datac$p, na.rm = TRUE), main = "PLNJPY Carry Trade", 
     col = 'red', lwd= 2, xlim = c(0.70, 1.20))
abline(v = mean(Datac$p))
text(x = .92, y = 5, labels = "Mean")
plot(density(Datam$p, na.rm = TRUE), main = "PLNJPY carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.70, 1.20))
abline(v = mean(Datam$p, na.rm = TRUE))
text(x = .96, y = 11, labels = "Mean")
# EUR-------------------------------------
d <- forp(fx = "PLN", b = "EUR", m = 1)
tail(d$data)
# Subset for Crisis (C) and Moderation (M)---------------------------
Datac <- subset(d$data, VIX > 30)
Datam <- subset(d$data, VIX < 20)
plot(density(Datac$p, na.rm = TRUE), main = "PLNEUR carry in crisis", 
     col = 'red', lwd= 2, xlim = c(0.85, 1.10))
abline(v = mean(Datac$p))
text(x = .96, y = 2, labels = "Mean")
plot(density(Datam$p, na.rm = TRUE), main = "PLNEUR carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.85, 1.10))
abline(v = mean(Datam$p, na.rm = TRUE))
text(x = .98, y = 14, labels = "Mean")
dev.off()