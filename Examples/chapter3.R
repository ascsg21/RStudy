library(ggplot2)
x <- c("a", "a", "b", "c")
x

qplot(x)

# data 에 mpg, x 축에 hwy 변수 지정해 그래프 생성
qplot(data = mpg, x = hwy)

# x 축 cty
qplot(data = mpg, x = cty)

# x 축 drv, y 축 hwy
qplot(data = mpg, x = drv, y = hwy)

# x 축 drv, y 축 hwy, 선 그래프 형태
qplot(data = mpg, x = drv, y = hwy, geom = "line")

# x 축 drv, y 축 hwy, 상자 그림 형태
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

# x 축 drv, y 축 hwy, 상자 그림 형태, drv 별 색 표현
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

