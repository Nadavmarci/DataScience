#//////////////////////////////////////Part A//////////////////////////////////////
#1
df <- iris
#Sepal.Length
mean_Sepal.Length <- mean(df$Sepal.Length)
min_Sepal.Length <- min(df$Sepal.Length)
max_Sepal.Length <- max(df$Sepal.Length)
#Sepal.Width
mean_Sepal.Width <- mean(df$Sepal.Width)
min_Sepal.Width <- min(df$Sepal.Width)
max_Sepal.Width <- max(df$Sepal.Width)
#Petal.Length
mean_Petal.Length <- mean(df$Petal.Length)
min_Petal.Length <- min(df$Petal.Length)
max_Petal.Length <- max(df$Petal.Length)
#Petal.Length
mean_Petal.Width <- mean(df$Petal.Width)
min_Petal.Width <- min(df$Petal.Width)
max_Petal.Width <- max(df$Petal.Width)
# Or just use a summary command:
summary(df[,1:4])

#2
df <- mtcars
sqrt.df <- sqrt(df$mpg)
log.df <- log(df$disp)
wt3.df <- df$wt^3

#3
s1 <- c("age","gender","height","weight")
s2 <- paste(s1,collapse="+")
s2

#4
m1<-matrix(c(4,7,-8,3,0,-2,1,-5,12,-3,6,9), ncol=4)
m1
colMeans(m1) #column mean
rowMeans(m1) #row mean
mean(m1)

#//////////////////////////////////////Part B//////////////////////////////////////
#1
Letters <- LETTERS
i <- length(Letters)
while(i>0) {
  print(Letters[i])
  i= i-1
}

#2
# While loop
num <-sample(1:10)
i <- 1
while(i<11) {
  if(num[i]==8){
    break
  }
  else {
    print(num[i])
    i= i+1
  }
}
# For loop
num <-sample(1:10)
for (i in 1:10){
  if(num[i]==8){
    break
  }
  else {
    print(num[i])
  }
}

#3
a <- c("well","you","merged","vectors","one")
b <- c("done","have","two","into","phrase")
s <- c()
for (i in 1:5) {
  s1 <- c(a[i],b[i])
  s <- append(s,s1,length(s))
}
print(s)

#//////////////////////////////////////Part c//////////////////////////////////////
#1
df <- iris
par(mfrow=c(2,2))
hist(df$Sepal.Length,main="Sepal Length")
hist(df$Sepal.Width,main="Sepal Width")
hist(df$Petal.Length,main="Petal Length")
hist(df$Petal.Width,main="Petal Width")
par(mfrow=c(1,1))

#2
pie(table(df$Species))

#3
par(mfrow=c(2,1))
cl <- as.numeric(iris$Species)
plot(iris$Petal.Length, main="Petal Lenght",col=cl)
plot(iris$Petal.Width, main="Petal Width",col=cl)
par(mfrow=c(1,1))

#4
boxplot(Sepal.Length  ~ Species, df, main = "Sepal Length", col = c("red","green","blue"))




















