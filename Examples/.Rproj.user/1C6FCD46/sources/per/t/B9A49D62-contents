install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")

install.packages("rJava")

library(rJava)
library(dplyr)
library(KoNLP)

dyn.load('/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home/jre/lib/server/libjvm.dylib')
library(rJava)

useNIADic()

txt <- readLines("hiphop.txt")

head(txt)

install.packages("stringr")

library(stringr)

extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

nouns <- extractNoun(txt)

wordcount <- table(unlist(nouns))

df_word <- as.data.frame(wordcount, stringsAsFactors = F)

df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

df_word <- filter(df_word, nchar(word) >= 2)

top_20 <- df_word %>%
  arrange(desc(freq)) %>%
  head(20)

top_20

install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8, "Dark2")

set.seed(1234)

wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(4, 0.3),
          colors = pal,
          family = "AppleGothic")

library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

theme_set(theme_gray(base_family="AppleGothic"))

options(encoding="UTF-8")

twitter <- read.csv("twitter.csv",
                    header = T,
                    stringsAsFactors = F,
                    fileEncoding = "UTF-8")

twitter <- rename(twitter,
                  no = 번호,
                  id = 계정이름,
                  date = 작성일,
                  tw = 내용)

twitter$tw <- str_replace_all(twitter$tw, "\\W", " ")

head(twitter$tw)

nouns <- extractNoun(twitter$tw)

wordcount <- table(unlist(nouns))

df_word <- as.data.frame(wordcount, stringsAsFactors = F)

df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

df_word <- filter(df_word, nchar(word) >= 2)

top20 <- df_word %>%
  arrange(desc(freq)) %>%
  head(20)

top20

pal <- brewer.pal(9, "Blues")[5:9]

set.seed(1234)

wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 10,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(6, 0.2),
          colors = pal,
          family = "AppleGothic")


































