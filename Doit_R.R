var1 <- seq(1, 70, by = 2)
var1

a <- 1
a
b <- 2
c <- 3
d <- 3.5
a + b
a + b + c
4 / b
5 * b

install.packages("ggplot2")
library(ggplot2)
x <- c("a", "a", "b", "c")
x
qplot(x)
qplot(data = mpg, x = hwy)
mpg
mpg$hwy


qplot(data = mpg, x = cty)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg,
      x = drv,
      y = hwy,
      geom = "line")
qplot(data = mpg,
      x = drv,
      y = hwy,
      geom = "boxplot")
qplot(
  data = mpg,
  x = drv,
  y = hwy,
  geom = "boxplot",
  colour = drv
)
? qplot

# Q1

subject <- c(80, 60, 70, 50, 90)
#Q2
sum(subject) / length(subject)
mean(subject)
#Q3
average <- sum(subject) / length(subject)
average <- mean(subject)
average

english <- c(90, 80, 60, 70)
math <- c(50, 60, 100, 20)

df_midterm <- data.frame(english, math)
df_midterm
class <- c(1, 1, 2, 2)
df_midterm <- data.frame(english, math, class)
df_midterm
mean(df_midterm$english)
mean(df_midterm$math)
df_midterm <- data.frame(
  english = c(90, 80, 60, 70),
  math = c(50, 60, 100, 20),
  class = c(1, 1, 2, 2)
)
df_midterm
## 여기는 왜 = 을 써야되는거지
#q1
df_q <- data.frame(
  fruit   = c("사과", "딸기", "수박"),
  price   = c(1800, 1500, 3000),
  volume   = c(24, 38, 13)
)
#q2
df_q
mean(df_q$price)

mean(df_q$volume)
install.packages("readxl")
library(readxl)

df_exam <- read_excel("./data/excel_exam.xlsx")
df_exam
str(df_exam)
mean(df_exam$english)
mean(df_exam$science)
df_exam_novar <- read_excel("./data/excel_exam_novar.xlsx")
df_exam_novar
df_exam_novar <-
  read_excel("./data/excel_exam_novar.xlsx", col_name = F)
df_exam_novar
df_exam_sheet <-
  read_excel("./data/excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

df_csv_exam <- read.csv("./data/csv_exam.csv")
df_csv_exam
df_csv_exam <- read.csv("./data/csv_exam.csv", stringsAsFactors = F)
df_csv_exam

df_midterm
write.csv(df_midterm, file = "df_midterm.csv")
save(df_midterm, file = "df_midterm.rda")
rm(df_midterm)
df_midterm
load("df_midterm.rda")
df_midterm

exam <- read.csv("./data/csv_exam.csv")
exam
head(exam)
head(exam, 10)
tail(exam)
tail(exam, 10)
View(exam)
dim(exam) # 행, 열 출력
str(exam)
summary(exam)
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)

df_raw <- data.frame(var1 = c(1, 2, 1), var2 = c(2, 3, 2))
df_raw
install.packages("dplyr")
library(dplyr)
df_new <- rename(df_raw, v2 = var2) # 여기 오타인가보당
df_new
mpg1 <- as.data.frame(ggplot2::mpg)
mpg1 <- rename(mpg1, city = cty, highway = hwy)
head(mpg1)

df <- data.frame(var1 = c(4, 3, 8), var2 = c(2, 6, 1))
df
df$var_sum <- df$var1 + df$var2
df$var_sum
df
df$var_mean <- (df$var1 + df$var2) / 2
df

mpg$total <- (mpg$cty + mpg$hwy) / 2
mpg$total
head(mpg)
summary(mpg$total)
hist(mpg$total)
