library(MASS)

## Zelig 5
library(Zelig5)
z.out5 <- zelig(dist ~ speed, model = "ls", data = cars, cite = TRUE)
print(z.out5)
x.out5 <- Zelig5::setx(z.out5, speed=30)
x1.out5 <- Zelig5::setx(z.out5, speed = 50)
s.out5 <- Zelig5::sim(z.out5, x.out5, x1.out5, num = 1000)
summary(s.out)

## Zelig 4
library(Zelig)
z.out4 <- Zelig::zelig(dist ~ speed, model = "ls", data = cars)
x.out4 <- Zelig::setx(z.out4, speed = 30)
x1.out4 <- Zelig::setx(z.out4, speed = 50)
s.out4 <- Zelig::sim(z.out4, x.out4, x1.out4, num = 1000)
summary(s.out4)