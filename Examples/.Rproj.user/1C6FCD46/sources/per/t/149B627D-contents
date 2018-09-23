library(dplyr)

exam <- read.csv("csv_exam.csv")
exam

exam %>% filter(class == 1)

exam %>% filter(class == 2)

exam %>% filter(class != 1)

exam %>% filter(class != 3)

exam %>% filter(math > 50)

exam %>% filter(math < 50)

exam %>% filter(english >= 80)

exam %>% filter(english <= 80 )

exam %>% filter(class == 1 & math >= 50)

exam %>% filter(class == 2 & english >= 80)

exam %>% filter(math >= 90 | english >= 90)

exam %>% filter(english < 90 | science < 50)

exam %>% filter(class == 1 | class == 2 | class == 5)

exam %>% filter(class %in% c(1, 3, 5))

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)
mean(class2$math)

mpg <- as.data.frame(ggplot2::mpg)

head(mpg)

tail(mpg)

str(mpg)

summary(mpg)

displ1 <- mpg %>% filter(displ <= 4)
displ2 <- mpg %>% filter(displ >= 5)

mean(displ1$hwy)
mean(displ2$hwy)

manufacturer1 <- mpg %>% filter(manufacturer == "audi")
manufacturer2 <- mpg %>% filter(manufacturer == "toyota")

mean(manufacturer1$cty)
mean(manufacturer2$cty)

var1 <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))

mean(var1$hwy)

exam %>% select(math)

exam %>% select(english)

exam %>% select(class, math, english)

exam %>% select(-math)

exam %>% select(-math, -english)

exam %>% filter(class == 1) %>% select(english)

exam %>%
  filter(class == 1) %>%
  select(english)

exam %>%
  select(id, math) %>%
  head

exam %>%
  select(id, math) %>%
  head(10)

var2 <- mpg %>% select(class, cty)

head(var2, 20)

var3 <- var2 %>% filter(class == "suv")
var4 <- var2 %>% filter(class == "compact")

mean(var3$cty)
mean(var4$cty)

exam %>% arrange(math)

exam %>% arrange(desc(math))

exam %>% arrange(class, math)

audi <- mpg %>% filter(manufacturer == "audi") %>% select(class, hwy)

head(mpg, 10)

audi %>% arrange(desc(hwy)) %>% head(5)

exam %>%
  mutate(total = math + english + science) %>%
  head

exam %>%
  mutate(total = math + english + science,
         mean = (math + english + science)/3) %>%
  head

exam %>%
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>%
  head

exam %>%
  mutate(total = math + english + science) %>%
  arrange(total) %>%
  head

mpg_copy = mpg

mpg_copy <- mpg_copy %>% mutate(total = hwy + cty)

head(mpg_copy)

mpg_copy <- mpg_copy %>% mutate(avr = total / 2)

mpg_copy %>% arrange(desc(avr)) %>% head(3)

mpg %>%
  mutate(total = hwy + cty) %>%
  mutate(avr = total / 2) %>%
  arrange(desc(avr)) %>%
  head(3)


exam %>% summarise(mean_math = mean(math))

exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math))

exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            n = n())

mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(mean_cty = mean(cty)) %>%
  head(10)

mpg %>%
  group_by(manufacturer) %>%
  filter(class == "suv") %>%
  mutate(tot = (cty+hwy)/2) %>%
  summarise(mean_tot = mean(tot)) %>%
  arrange(desc(mean_tot)) %>%
  head(5)

mpg %>%
  group_by(class) %>%
  summarise(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty))

mpg %>%
  group_by(manufacturer) %>%
  summarise(mean_hwy = mean(hwy)) %>%
  arrange(desc(mean_hwy)) %>%
  head(3)

mpg %>%
  group_by(manufacturer) %>%
  filter(class == "compact") %>%
  summarise(n = n()) %>%
  arrange(desc(n))

test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(60, 80, 70, 90, 85))

test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 83, 65, 95, 80))

total <- left_join(test1, test2, by = "id")

total

name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))

name

exam

exam_new <- left_join(exam, name, by = "class")

exam_new

group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 85))

group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(70, 83, 65, 95, 80))

group_all <- bind_rows(group_a, group_b)

group_all

fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)

fuel

mpg_new <- left_join(mpg, fuel, by = "fl")
mpg_new

mpg_new %>%
  select(model, fl, price_fl) %>%
  head(5)


df_midwest <- as.data.frame(ggplot2::midwest)

df_midwest_1 %>%
  head(10)

df_midwest_1 <- df_midwest

df_midwest_1 <- df_midwest_1 %>%
  mutate(nadult_rate = (poptotal - popadults)/poptotal)

df_midwest_1 %>%
  arrange(desc(nadult_rate)) %>%
  head(5)

df_midwest_1 <- df_midwest_1 %>%
  mutate(grade = ifelse(nadult_rate >= 0.4, "large",
                        ifelse(nadult_rate >= 0.3 & nadult_rate < 0.4, "middle", "small")))

df_midwest_1 %>%
  group_by(grade) %>%
  summarise(n = n()) %>%
  arrange(desc(n))

df_midwest_1 %>%
  mutate(asian_rate = popasian / poptotal) %>%
  select(state, county, asian_rate) %>%
  arrange(asian_rate) %>%
  head(10)



























