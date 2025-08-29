# Set working directory (update path as needed)
setwd("C:\\Users\\it24102279\\Desktop\\IT24102279_Lab05")
setwd("C:\\Users\\Uni\\OneDrive - Sri Lanka Institute of Information Technology\\Y2S1\\Probability and Statistics - IT2120\\Labs\\Ongoing\\Ongoing\\Lab05")


# 1. Import the dataset into a data frame called "Delivery Times"
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE)

# 2. Draw a histogram for delivery times using nine class intervals where the lower limit is 20 and upper limit is 70
bins_dt <- seq(20, 70, length.out=10)
hist(Delivery_Times$Delivery_Time_(minutes), breaks=bins_dt, right=TRUE, main="Histogram for Delivery Times (9 Classes, 20-70)", xlab="Delivery Time", ylab="Frequency", border="black")

# 3. Comment on the shape of the distribution


# 4. Draw a cumulative frequency polygon (ogive) for the data in a separate plot
freq_dt <- as.vector(table(cut(Delivery_Times$Delivery_Time_(minutes), breaks=bins_dt, right=TRUE)))
cum_freq_dt <- cumsum(freq_dt)
upper_limits_dt <- bins_dt[-1]
plot(upper_limits_dt, cum_freq_dt, type="o", main="Cumulative Frequency Polygon (Ogive) for Delivery Times", xlab="Upper Class Limits", ylab="Cumulative Frequency", pch=16)