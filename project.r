data <- read.csv("student_data.csv")
head(data)
str(data)
summary(data)
hist(data$SocialMedia_Hours,
     main="Distribution of Social Media Usage",
     xlab="Hours per Day")
boxplot(data$SocialMedia_Hours,
        main="Boxplot of Social Media Usage")
plot(data$SocialMedia_Hours,
     data$Marks,
     main="Social Media Usage vs Marks",
     xlab="Social Media Hours",
     ylab="Marks")
cor(data$SocialMedia_Hours,
    data$Marks)
plot(data$SocialMedia_Hours,
     data$Marks,
     main="Social Media vs Academic Performance",
     xlab="Social Media Hours",
     ylab="Marks")

abline(
  lm(Marks ~ SocialMedia_Hours, data=data),
  lwd=2
)
plot(data$SocialMedia_Hours,
     data$Marks,
     main="Social Media Usage vs Academic Performance",
     xlab="Social Media Hours per Day",
     ylab="Marks")

abline(
  lm(Marks ~ SocialMedia_Hours, data=data),
  lwd=2
)

text(
  6,
  95,
  paste("Correlation =", round(cor(data$SocialMedia_Hours,
                                   data$Marks),2))
)
best <- data[which.max(data$Marks), ]
best
worst <- data[which.min(data$Marks), ]
worst
aggregate(Marks ~ SocialMedia_Hours,
          data,
          mean)
