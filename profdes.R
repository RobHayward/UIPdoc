# Calculate descriptive statistics and create table
# Need to adjust the b = currency and m = months. 
# d <- forp(fx = "PLN", b = "EUR", m = 1)
Mat <- matrix(NA, nrow = 13, ncol = 11)
j = 1
for(i in  c("BGN", "EEK", "LVL", "HRK", "RON", "RUB", "UAH", "HUF", 
            "PLN", "CZK", "NOK",  "ISK", "TRY")){
  das <- forp(fx = i, b = "EUR", m = 1)
Mat[j,] <- mystatsm(das$data$p, na.omit = TRUE)
j = j +1
}

rownames(Mat) <- c("BGN", "EEK", "LVL", "HRK", "RON", "RUB", "UAH", "HUF", 
                   "PLN", "CZK", "NOK",  "ISK", "TRY")
colnames(Mat) <- c("No", "Mean", "tstat", "Median", "Stdev", "Skew", "2SES",
                   "Kurt", "2SEK", "Max", "Min")
Mat
Mat <- xtable(Mat, digits = 4)
Mat