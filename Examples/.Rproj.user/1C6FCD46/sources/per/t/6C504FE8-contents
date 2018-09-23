english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math

df_midterm <- data.frame(english, math)
df_midterm

class <- c(1, 1, 2, 2)
class

df_midterm <- data.frame(english, math, class)
df_midterm

mean(df_midterm$english)

mean(df_midterm$math)

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm


install.packages("readxl")

library(readxl)

df_exam <- read_excel("excel_exam.xlsx")
df_exam

mean(df_exam$english)
mean(df_exam$science)

df_exam_novar <- read_excel("excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet


df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam

df_csv_exam <- read.csv("csv_exam.csv", stringsAsFactors = F)
df_csv_exam

df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

write.csv(df_midterm, file = "df_midterm.csv")

save(df_midterm, file = "df_midterm.rda")

rm(df_midterm)

df_midterm

load("df_midterm.rda")


exam <- read.csv("csv_exam.csv")

head(exam)
head(exam, 10)

tail(exam)
tail(exam, 10)

View(exam)

dim(exam)

str(exam)

summary(exam)

install.packages("ggplot2")


mpg <- as.data.frame(ggplot2::mpg)

head(mpg)

tail(mpg)

str(mpg)

summary(mpg)

install.packages("dplyr")
library(dplyr)



mpg$total <- (mpg$cty + mpg$hwy) / 2

head(mpg)

mean(mpg$total)

summary(mpg$total)

hist(mpg$total)

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

head(mpg, 20)

table(mpg$test)

library(ggplot2)
qplot(mpg$test)

mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C"))

head(mpg, 20)

table(mpg$grade)

qplot(mpg$grade)



midwest <- as.data.frame(ggplot2::midwest)

head(midwest)
tail(midwest)
dim(midwest)
summary(midwest)


df_midwest <- as.data.frame(ggplot2::midwest)

head(df_midwest)
tail(df_midwest)
dim(df_midwest)
summary(df_midwest)

df_midwest_new <- df_midwest

summary(df_midwest_new)

df_midwest_new <- rename(df_midwest_new, total = poptotal, asian = popasian)

summary(df_midwest_new)

df_midwest_new$asianrate <- (df_midwest_new$asian / df_midwest_new$total) * 100

head(df_midwest_new, 10)

hist(df_midwest_new$asianrate)

mean(df_midwest_new$asianrate)

df_midwest_new$scale <- ifelse(df_midwest_new$asianrate > mean(df_midwest_new$asianrate), "large", "samll")

table(df_midwest_new$scale)

qplot(df_midwest_new$scale)


































