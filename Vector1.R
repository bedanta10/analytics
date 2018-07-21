#Data Structures - Vectors

x = c(1,5,7,8,4)
x2 <- c(2,7,4,8,9)
x
x2

x4 = c('M','F','M','F','M')
x4
(x5 = 1:100)
(x6 = seq(1,100,by=3))
?seq
(x7=seq(0,1,length.out = 11))

#create a normal distribution

marks = rnorm(60, mean=60, sd=10)
marks
plot(density(marks)) #plot the normal distribution curve

x8=10:100
x8
x8[1] #get the value at 1st position
x8[1:5] #get the first 5 values
x8[c(1,3,5)] #get the 1st,3rd and 5th values
x8[-1] #get all the values except the 1st value
mean(x8)
sum(x8)
median(x8)
(x8>50)
(x8>50&x8<80)
x9=c('M','F','A')
x9[!x9 %in% x4] #which value of x9 is not present in x4

(mymatrix_1=matrix(1:24,ncol = 6,byrow = T))
(mymatrix_2=matrix(1:24,ncol = 6,byrow = F))
mymatrix_1[,1] #gets me all the rows and the 1st column(since 1st arg is blank and 2nd arg is 1) of mymatrix_1
mymatrix_1[1,] #gets me the 1st row and all the columns(since 1st arg is 1 and 2nd arg is blank) of mymatrix_1
mymatrix_1[2:4,3:4]
mymatrix_1[3,5]
colSums(mymatrix_1)
rowSums(mymatrix_1)
rowMeans(mymatrix_1)
?matrix
matrix(marks,ncol = 6)

#creating multi-way arrays
(myarray1 = array(1:24,dim = c(4,3,2)))
?array
(myarray2 = array(1:24,dim = c(4,3,2),dimnames = list(c('S1','S2','S3','S4'),c('Sub1','Sub2','Sub3'),c('Dept1','Dept2'))))
apply(myarray1, 1, sum)
apply(myarray1, 2, sum)
?apply


#creating dataframes
(rollno = c('MBA-01','MBA-02'))
(rollno = paste('MBA',1:60,sep = '-'))
(name = c('Student1','Student2'))
(name = paste('Student',1:60))
(df = data.frame(rollno,name))

set.seed(1,2,3,4) #check the usage of set.seed
(gender = sample(c('M','F'),size=60,replace=T,prob = c(.4,.6)))
table(gender) #returns the no. of M and F in the sample 'gender'
prop.table(table(gender))
?set.seed

(df = data.frame(rollno,name,gender))
head(df)
tail(df)
head(df,n=3)
tail(df,n=3)

(df = data.frame(rollno,name,gender,marks))

x=c(23.3,34.742)
floor(x);ceiling(x);trunc(x);round(x,1)
marks=floor(marks)
(df = data.frame(rollno,name,gender,marks, stringsAsFactors = F))

str(df) #gives the struc
summary(df)
df$gender = factor(df$gender) #converting the 'gender' data from 'character' to 'factor' form; data in 'factor' form allows faster processing
str(df)
summary(df)

(grades=sample(c('A','B','E'),size = 60,replace = T,prob=c(.2,.3,.5)))
table(grades)
grades=factor(grades)
summary(grades)

grades=factor(grades,levels = c('E','B','A'), ordered = T)
grades

(df = data.frame(rollno,name,gender,marks, grades, stringsAsFactors = F))
summary(df)
(df$gender = factor(df$gender))
summary(gender)

dim(df)
class(df)

aggregate(df$marks, by=list(df$gender), FUN=sum)
aggregate(df$marks, by=list(df$gender), FUN=mean)
aggregate(marks ~ gender, data = df, FUN=mean)
aggregate(marks ~ gender+grades, data = df, FUN=mean)

df$marks2 = runif(60,50,100)
head(df)

cbind(grades,gender)
rbind(grades,gender)

aggregate(cbind(marks,marks2) ~ gender, data=df, FUN=mean)

df
df[df$gender=='M',]
df[df$gender=='M',1]
df[df$gender=='M',c(1,2,5)]
df[df$gender=='M',c('rollno','gender')]