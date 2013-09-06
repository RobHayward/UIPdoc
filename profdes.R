# Calculate descriptive statistics and create table
# Need to adjust the b = currency and m = months.  
Mat <- matrix(NA, nrow = 12, ncol = 11)
j = 1
for(i in  c("ISK", "RON", "PLN", "RUB", "HUF", "TRY", "UAH", "NOK", 
            "LVL", "HRK", "CZK", "BGN")){
  das <- forp(fx = i, b = "JPY", m = 3)
Mat[j,] <- mystats(das$p, na.omit = TRUE)
j = j +1
}

rownames(Mat) <- c("ISK", "RON", "PLN", "RUB", "HUF", "TRY", "UAH", "NOK", 
                   "LVL", "HRK", "CZK", "BGN")
colnames(Mat) <- c("No", "Mean", "tstat", "Median", "Stdev", "Skew", "2SES",
                   "Kurt", "2SEK", "Max", "Min")
Mat
Mat <- xtable(Mat, digits = 4)
Mat