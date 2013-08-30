# Create Crisis (C) and Moderation (M) charts--------------------------
# just put the three cases that you want into the file. Can't automate.
# change title and xlim.  
pdf("hist3.pdf", paper= "a4r", width = 9, title = "Carry trade")
par(mfcol=c(2,3), oma = c(0,0,2,0))
plot(density(dah$PNOKUSD, na.rm = TRUE), main = "NOK carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.85, 1.10))
abline(v = mean(dah$PNOKUSD))
text(x = .95, y = 13, labels = "Mean")
plot(density(dal$PNOKUSD, na.rm = TRUE), main = "NOK carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.85, 1.10))
abline(v = mean(dah$PNOKUSD))
text(x = .95, y = 12, labels = "Mean")
plot(density(dah$PCZKUSD, na.rm = TRUE), main = "CZK carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.85, 1.10))
abline(v = mean(dah$PCZKUSD))
text(x = .94, y = 7, labels = "Mean")
plot(density(dal$PCZKUSD, na.rm = TRUE), main = "CZK carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.85, 1.10))
abline(v = mean(dal$PCZKUSD, na.rm = TRUE))
text(x = .92, y = 10, labels = "Mean")
text(mean(dal$pCZKUSD))
plot(density(dah$PRONUSD, na.rm = TRUE), main = "RON carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.80, 1.10))
abline(v = mean(dah$PRONUSD, na.rm = TRUE))
text(x = .93, y = 8, labels = "Mean")
plot(density(dal$PRONUSD, na.rm = TRUE), main = "RON carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.85, 1.10))
abline(v = mean(dal$PRONUSD, na.rm = TRUE))
text(x = .96, y = 12, labels = "Mean")
mtext("USD Carry trade returns in Crisis and Moderation", outer = TRUE)
dev.off()
# second hist graph----------------------
pdf("hist4.pdf", paper= "a4r", width = 9, title = "Carry trade")
par(mfcol=c(2,3), oma = c(0,0,2,0))
plot(density(dah$PHUFEUR), main = "HUF carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.90, 1.10))
plot(density(dal$PHUFEUR), main = "HUF carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.90, 1.10))
plot(density(dah$PPLNEUR), main = "PLN carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.85, 1.10))
plot(density(dal$PPLNEUR, na.rm = TRUE), main = "PLN carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.85, 1.10))
plot(density(dah$PISKEUR), main = "ISK carry in Crisis", 
     col = 'red', lwd= 2, xlim = c(0.80, 1.20))
plot(density(dal$PISKEUR,  na.rm = TRUE), main = "ISK carry in Moderation", 
     col = 'red',lwd = 2, xlim = c(0.80, 1.20))
mtext("EUR Carry trade returns in Crisis and Moderation", outer = TRUE)
dev.off()
