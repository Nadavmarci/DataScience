library(dplyr)
df <- read.csv("insurance.csv")
head(df)
x1 <- c("age","sex","bmi","children","smoker","region","charges")

age <- df$age
sex <- factor(df$sex,levels=c("female","male"),labels=c(1,2))
bmi <- df$bmi
children <- df$children
smoker <- factor(df$smoker,levels=c("no","yes"),labels=c(1,2))
region <- factor(df$region,levels=c("southwest","northwest","southeast","northeast"),labels=c(1,2,3,4))
charges <-df$charges
df1 <- data.frame(age,sex,bmi,children,smoker,region,charges)

par(mfrow=c(2,3))
for (i in 1:6){
  title <- c(x1[i],"/",x1[7])
  plot(charges,t(df1[i]),
       main=title,
       xlab=x1[7],
       ylab=x1[i])
}

x2 <- c("age","sex","bmi","children","smoker","region","charges")
age <- df$age
sex <- factor(df$sex,levels=c("female","male"),labels=c(1,2))
bmi <- df$bmi
children <- df$children
smoker <- factor(df$smoker,levels=c("no","yes"),labels=c(1,2))
region <- factor(df$region,levels=c("southwest","northwest","southeast","northeast"),labels=c(1,2,3,4))
charges <-df$charges
df2 <- data.frame(age,sex,bmi,children,smoker,region,charges)
col1 <- ifelse(smoker == 2 & age > median(df$age) & children < 3,"orange","black")

par(mfrow=c(2,3))
for (i in 1:6){
  title <- c(x2[i],"/",x2[7])
  plot(charges,t(df2[i]),
       main=title,
       xlab=x2[7],
       ylab=x2[i],
       col=col1)
}

df_Aggregation <- data.frame(value=c("smoker","age","children"))
df_Aggregation$min <- c(min(df$smoker), min(df$age), min(df$children))
df_Aggregation$max <- c(max(df$smoker), max(df$age), max(df$children))
df_Aggregation$mean <- c(mean(df$smoker), mean(df$age), mean(df$children))
df_Aggregation$median <- c(median(df$smoker), median(df$age), median(df$children))
df_Aggregation$std <- c(sd(df$smoker), sd(df$age), sd(df$children))
df_Aggregation$quantile <- c(quantile(df$smoker,c(0.25,0.75)), quantile(df$age,c(0.25,0.75)), quantile(df$children,c(0.25,0.75)))





