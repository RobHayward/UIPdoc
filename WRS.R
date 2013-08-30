# Section{Comparison of the quantiles of the distributions---------
require(WRS)
qcomhd(dah$PNOKUSD, dal$PNOKUSD, q = seq(0.1, 0.9, by = 0.1))
qcomhd(dah$PCZKUSD, dal$PCZKUSD, q = seq(0.1, 0.9, by = 0.1))
qcomhd(dah$PRONUSD, dal$PRONUSD, q = seq(0.1, 0.9, by = 0.1))

