rm(list = ls())
da <- read.csv("UIPdata2.csv", header = TRUE)
da$Date <- as.Date(da$OBS, format = "%Y-%m")
