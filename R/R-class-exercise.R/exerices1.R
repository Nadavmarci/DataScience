#//////////////////////////////////////Part A//////////////////////////////////////
#4
a <- 10:20

#5
b <- letters
b[seq(4,13,1)]

#6
f <- c(0,1,1,1,0,0,0,0)

#7
fa <- factor(f,levels=c(0,1),labels=c("YES","NO"))

#8
?objects


#//////////////////////////////////////Part B//////////////////////////////////////
#2
m1 <- matrix(rnorm(24),ncol=8,nrow=3)

#3
m2 <- matrix(rnorm(10),ncol=5,nrow=2)

#4
arry <- array(1:768, dim = c(16,16,3))

#//////////////////////////////////////Part C//////////////////////////////////////
#1
L <- list(list(Rank=1,Peak=1,Title="Avatar",Worldwide_gross="$2,787,965,087",Year=2009),
          list(Rank=2,Peak=1,Title="Titanic",Worldwide_gross="$2,187,463,944",Year=1997),
          list(Rank=3,Peak=3,Title="Star Wars: The Force Awakens",Worldwide_gross="$2,068,223,624",Year=2015),
          list(Rank=4,Peak=4,Title="Avengers: Infinity War",Worldwide_gross="$1,844,894,638",Year=2018),
          list(Rank=5,Peak=3,Title="Jurassic world",Worldwide_gross="$1,671,713,208",Year=2015))

#2.1
L[[2]]$Title

#2.2
L[[2]][3]

#//////////////////////////////////////Part D//////////////////////////////////////
#1
name <- c("Avi","Ben","Gad","Dan","Harel","Vered","Zelig")
age <- c(31,25,28,28,33,27,32)
is.married <- c(FALSE,FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
city <- c('Jerusalem','Jerusalem', 'Haifa','Jerusalem', 'Haifa', 'Tel Aviv', 'Tel Aviv')
has.pet <- c(TRUE,FALSE,FALSE,FALSE,TRUE,FALSE,TRUE)
df <- data.frame(name,age,is.married,city,has.pet)

#2
df$age[3]

#3
sum(df$is.married)

#4
mean(df$age)

#5
df.no_Jer <- subset(df, city!='Jerusalem')
sum(df.no_Jer$has.pet)

#6
df <- subset(df, age < 30)