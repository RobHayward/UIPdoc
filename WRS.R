# Section{Comparison of the quantiles of the distributions--------- 
# Create the series as in CMchart2.R
d <- forp(fx = "PLN", b = "JPY", m = 1)
# Subset for Crisis (C) and Moderation (M)---------------------------
Datac <- subset(d$data, VIX > 30)
Datam <- subset(d$data, VIX < 20)
require(WRS)
ad <- qcomhd(Datac$p, Datam$p, q = seq(0.1, 0.9, by = 0.1))
ad
names(ad)
qcomhd
ad$est.1
