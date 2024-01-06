# ==============================================================================
# 2023.11.04
# ==============================================================================
# 1줄 실행 Ctrl + Enter
"Hellow Wolrd"
print("Hellow Wolrd")
cat("Hellow Wolrd")

2 + 3
log(10) + 5

# 원칙
# A <- 10
A = 10

# 반지름 10인 원의 면적 구하기
# 상수 (대문자)
PI = 3.14

# 변수 (소문자)
rad = 10

(rad ^ 2) * PI


50:90
list = seq(1, 101, 3)
sum(list, na.rm = TRUE)

# 연습4
d1 = 1:50
d2 = c(51:100, NA)

# 도움말
help(sum)
?sum


sum(c(d1, d2), na.rm = FALSE)
sum(c(d1, d2), na.rm = TRUE)


# d1에서 40보다 큰값만 합계
# 1번 flag
isFlag = d1 > 40
# sum(isFlag)

# TRUE 추출
list = d1[isFlag]

# 합계
sum(list, na.rm = TRUE)

sum(d1[d1 > 40], na.rm = TRUE)


# v1에서 60보다 크고 73보다 작은 수
# 60 < v1 < 73
v1 = 51:90
list = v1[(60 < v1 & v1 < 73)]
sum(list, na.rm = TRUE)

list = v1[(v1 %% 2) == 0]
sum(list, na.rm = TRUE)

# ============================================================
# 2023.11.11
# ============================================================
z = matrix(1:20, nrow=4, ncol=5)
z

matrix(c(1:20), nrow=4, ncol=5)

matrix(c(1, 2, 3, 4, 5), nrow=4, ncol=5)

matrix(c(1:20), nrow=4, ncol=5, byrow=T)
# matrix(c(1:20), nrow=4, ncol=5, byrow=TRUE)

# x = 1:4
x = c(1, 2, 3, 4)
y = 5:8
# y = c(5, 6, 7, 8)

m1 = cbind(x, y)
m1

m3 = matrix(c(1:8), nrow=4, ncol=2)
colnames(m3) = c("x", "y")
m3

m2 = rbind(x, y)
m2

# 매트릭스에서 행/열 인덱스 찾기
m2[1, 3]

# 특정 행을 데이터 가져오기
m2[2, 1:4]
m2[2, ]

colnames(m2)
colnames(m2)  = c("col", "col2", "col3", "col4")
m2
rownames(m2) = c("row", "row2")
m2

# m5

m2["row", "col2"]
m2[1, 2]


# 연습문제2
# 1번
score = matrix(c(10, 40, 60, 20, 21, 60, 70, 30), nrow=4, ncol=2)
colnames(score)  = c("m", "f")
score

# 2번
colnames(score)  = c("male", "female")
score

# 3번
score[2, ]

# 4번
score[ ,"female"]

# 5번
score[3, 2]





# R에서 제공하는 내장함수 시각화
# image(score)

# 라이브러리 설치
# install.packages("pheatmap")
# install.packages("gplots")

# 라이브러리 읽기
library(pheatmap)
library(gplots)

# pheatmap(score)
# heatmap.2(score)

# 순위: 100등을 기준으로 몇등
# 최소값, 25순위, 중간값, 평균값, 75순위, 최대값
summary(score)


# 데이터 프레임
# 문자형 
city = c("seoul", "tokyo")
# 숫자형
rank = c(1, 2)

df = data.frame(city, rank)

# R에서 제공하는 데이터를 변수로 저장
data = iris

# 컬럼 이름 추출
colnames(data)

head(data)

# 1열 추출
data[ , 1]
data$Sepal.Length
data[ , "Sepal.Length"]

# 5행 2열 추출
data[5, 2]
data[5, "Sepal.Width"]

# 행/열 구조
dim(data)

dimInfo = dim(data)
dimInfo[1]
dimInfo[2]

# 행 개수
nrow(data)
# 열 개수 
ncol(data)

# 1~5행만 보기
head(data, n = 5)

# 끝~5행만 보기
tail(data, n = 5)

# 데이터 컬럼 정보
str(data)

# 특정 컬럼을 제외
colSums(data[ ,-5])
colMeans(data[ ,-5])

rowSums(data[ ,-5])
rowMeans(data[ ,-5])

head(data)

# 특정 컬럼에 특정 종 추출 (1)
selData = subset(data, Species == "setosa")
# 특정 컬럼에 특정 종 추출 (2)
isFlag = (data$Species == "setosa")
data[isFlag, ]

# 연습3
# state.x77
st = data.frame(state.x77)
st
colnames(st)
rownames(st)
dim(st)
str(st)
summary(st)

colSums(st)
colMeans(st)
rowSums(st)
rowMeans(st)

head(st)
subset(st, rownames(st) == "Florida")




# 라이브러리 읽기
library(esquisse)
library(DataExplorer)

# 데이터프레임 시각화 (1)
esquisser(st)

# 데이터프레임 시각화 (2)
plot_intro(st)
plot_missing(st)
plot_histogram(st)





# 엑셀 라이브러리 다운로드/설치
# install.packages("openxlsx")

# 엑셀 라이브러리 읽기
library(openxlsx)

# CSV 엑셀 파일 저장/쓰기
write.csv(iris, "iris.csv")

# XLSX 파일 저장/쓰기
write.xlsx(iris, "iris.xlsx")

# CSV 파일 읽기
csvData = read.csv("iris.csv")

# XLSX 파일 읽기
xlsxData = read.xlsx("iris.xlsx")



# st 데이터를 이용하여 CSX/XLSX 저장
# 저장된 CSV/XLSX 데이터 읽기

# ==============================================================================
# 2023.11.18
# ==============================================================================
# 단일 조건문
a = 10
# a = 3
if (a > 5) {
  print(a)
} else {
  print(a * 10)
}

# 축약 조건문 **
a = 10
# a = 3
ifelse(a > 5, a, a * 10)

# 다중 if-else문 ** 
# score = 95
score = 85
# score = 70
if (score > 90) {
  grd = 'A'
} else if (score > 80) {
  grd = 'B'
} else {
  grd = 'C'
}
print(grd)


grd = ifelse(score > 90, 'A', ifelse(score > 80, 'B', 'C'))
print(grd)


a = 10
b = 20
if (a > 5 & b > 5) {
  print(a + b)
}

a = 5
b = 20
if (a > 5 & b > 5) {
  print(a + b)
}


# 1:10 순차적으로 반복문 수행
for(i in 1:10) {
  print(i)
}

# 2단 구구단 생성
for(i in 1:10) {
  # print(2 * i)
  cat("2 * ", i, " = ", 2 * i, "\n")
  # cat("2 * ", i, " = ", 2 * i)
}

# 3단 구구단 생성
for(i in 1:10) {
  cat("3 * ", i, " = ", 3 * i, "\n")
}

# 4단
for(i in 1:10) {
  cat("4 * ", i, " = ", 4 * i, "\n")
}


# 2~9단 구구단 생성
for(j in 2:9) {
  for(i in 1:9) {
    cat(j, " * ", i, " = ", j * i, "\n")
  }
}

# 2~9단 구구단 생성 > 2단 출력
for(j in 2:9) {
  for(i in 1:9) {
    if (j == 2) {
      cat(j, " * ", i, " = ", j * i, "\n")
    }
  }
}

for(j in 2:9) {
  if (j == 2) {
    for(i in 1:9) {
      cat(j, " * ", i, " = ", j * i, "\n")
    }
  }
}

# for문을 통해 1~100 합계
sumVal = 0
for (i in 1:100) {
  sumVal = sumVal + i
}
print(sumVal)

# while 반복문을 통해 1~100 합계
i = 1
sumVal = 0
while(i <= 100) {
  sumVal = sumVal + i
  cat(i, sumVal, "\n")
  i = i + 1
}


# 1~1,000,000,000 반복문을 통해 합계
for (i in 1:1000000000) {
  sumVal = sumVal + i
  # cat(i, sumVal, "\n")
}
print(sumVal)


for (i in 1:1000000000) {
  sumVal = sumVal + i
}
print(sumVal)

# 벡터화를 통해 합계
sumVal = sum(1:1000000000)
print(sumVal)

# 나머지 %%
# 1 %% 3
# 10 %% 3

# 3, 12
# 1. 1~100 사이의 정수중 3 의 배수들의 합과 개수를 구하시오

# 반복문
sumVal = 0
cnt = 0
for (i in 1:100) {
  if (i %% 3 == 0) {
    cnt = cnt + 1
    sumVal = sumVal + i
    
    cat(i, cnt, sumVal, "\n")
  }
}
# 33개
# 1683

# 벡터화
vector = 1:100
list = vector[vector %% 3 == 0]

# 합계/개수
sum(list, na.rm = TRUE)
length(list)

# 1~100 -> 1,000,000


# help(sum)
# 최대값
help(max)

# R에서 제공하는 최대값
max(10, 15)
min(10, 15)

mymax = function(x, y) {
  # num.max = x
  # if (y > x) {
  #   num.max = y
  # }
  
  if (y > x) {
    num.max = y
  } else {
    num.max = x
  }
  
  return (num.max)
}

mymax(10, 15)


mymin = function(x, y) {
  if (y < x) {
    num.max = y
  } else {
    num.max = x
  }
  
  return (num.max)
}

mymin(10, 15)

head(iris)
# 1행 1열 데이터
iris[1, 1]
# 2행 1열 데이터
iris[2, 1]

# 1열 합계 (1행 + 2행 + 3행)
# iris[1, 1] +  iris[2, 1] + .... + 

sumVal = 0
cnt = 0
for (i in 1:150) {
  sumVal = sumVal + iris[i, 1]
  cnt = cnt + 1
  cat(i, iris[i, 1], sumVal, cnt, "\n")
}
print(sumVal)
print(cnt)

meanVal = sumVal / cnt
print(meanVal)

# 1열 합계, 1열 개수 -> 1열 평균
# 2열 합계, 2열 개수 -> 2열 평균
# 1~4열 합계, 1~4열 개수 -> 1~4열 평균
for (j in 1:4) {
  sumVal = 0
  cnt = 0
  for (i in 1:150) {
    sumVal = sumVal + iris[i, j]
    cnt = cnt + 1
  }
  
  meanVal = sumVal / cnt
  print(meanVal)
}

# 벡터화 평균 계산
# 1~150행, 1열
mean(iris[1:150, 1])
mean(iris[1:150, 2])
mean(iris[1:150, 3])
mean(iris[1:150, 4])

for (j in 1:4) {
  meanVal = mean(iris[1:150, j])
  print(meanVal)
}


# 행에 대한 평균
mean(iris[1, 1:4], na.rm = TRUE)

# 열에 대한 합계, 개수 -> 평균
for (i in 1:150) {
  sumVal = 0
  cnt = 0
  for (j in 1:4) {
    sumVal = sumVal + iris[i, j]
    cnt = cnt + 1
  }
  
  meanVal = sumVal / cnt
  print(meanVal)
}

# iris[1, 1:4]

# 행의 평균
rowMeans(iris[ , 1:4])
apply(iris[ , 1:4], 1, mean)


# 열의 평균
colMeans(iris[ , 1:4])
apply(iris[ , 1:4], 2, mean)

# 신규 데이터
st = data.frame(state.x77)
# 평균, 합계 등
st$Populatio
st[ , 1]

# ==============================================================================
# 2023.11.25
# ==============================================================================
# 범주형 변수 저장
ans = c("Y", "Y", "N", "Y", "Y")

table(ans)

table(ans) / length(ans)

table(ans) / length(ans) * 100

tableData = table(ans)
barplot(tableData)
pie(tableData)

barplot(tableData, main="title", col = c("red", "blue"))
pie(tableData, main="title", col = c("red", "blue"))

barplot(tableData, xlab="x axis", ylab="y axis", main="title", col = c("red", "blue"))
help("barplot")
? barplot


# 연습1
head(infert)
edu = infert$education
unique(edu)
tableData = table(edu)
barplot(tableData)

table(edu) / length(edu)
table(edu) / length(edu) * 100.0

# 연속형 변수 
height = c(50, 60, 100, 75, 200)

# 평균, 중간값, 최소, 최대값
mean(height)
median(height)
min(height)
max(height)
quantile(height)

# 기초 통계량
summary(height)

# 분산/표준편차
var(height)
sd(height)

# 상자그림
boxplot(height)

# 주별 소득 시각화
head(state.x77)
df = data.frame(state.x77)
income = df$Income
boxplot(income)

# 연속형 -> 범주형 -> bar chart 
hist(income)
stem(income)


head(iris)
tail(iris)
boxplot(iris$Sepal.Length)
boxplot(Sepal.Length ~ Species, data = iris)

# 연습2
score = c(90, 85, 73, 80, 85, 65, 78, 50, 68, 96)
names(score) = c("KOR", "ENG", "MATH", "HIST", "SOC", "MUSIC", "BIO", "EARTH", "PHY", "ART")
score

mean(score)
median(score)
var(score)
# 가장 성적이 높은 과목의 이름을 보이시오
isFlag = (score == max(score))
score[isFlag]

# 상자그림
boxplot(score)

hist(score, main = "Hong's score", col = "purple")

# 연습3
mean(mtcars$wt)
median(mtcars$wt)
sd(mtcars$wt)

summary(mtcars$wt)

table(mtcars$cyl)
barplot(table(mtcars$cyl))

hist(mtcars$wt)
barplot(table(mtcars$cyl))
barplot(table(mtcars$gear))

boxplot(mtcars$wt)
boxplot(mtcars$disp)

# ==============================================================================
# 2023.12.02
# ==============================================================================
# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85) 

data = data.frame(height, weight)

# 산점도
plot(data$height, data$weight)

# 그림 제목, 축 제목
plot(data$height, data$weight, main = "키와 몸무게의 관계성", xlab = "키", ylab = "몸무게", col = "red", pch = 19)

# 상관계수
cor(data$height, data$weight)
cor(data$weight, data$height)

plot(mtcars$wt, mtcars$mpg, main = "중량과 연비의 관계성", xlab = "중량", ylab = "연비", col = "red", pch = 19)

plot(mtcars$wt, mtcars$mpg, main = "중량과 연비의 관계성", xlab = "중량", ylab = "연비", col = "red", pch = 19, type = "p")

cor(mtcars$wt, mtcars$mpg)

# 라이브러리를 통해 산점도
pairs(mtcars)
pairs(data)

pairs(mtcars[ , c("mpg", "disp", "drat")])
cor(mtcars[ , c("mpg", "disp", "drat")])

# 연습 1
# 증가 관계
plot(cars$speed, cars$dist, main = "속도과 제동거리의 관계성", xlab = "속도", ylab = "제동거리", col = "red", pch = 19, type = "p")

# 증가 관계
plot(pressure$temperature, pressure$pressure, main = "온도과 기압의 관계성", xlab = "온도", ylab = "기압", col = "red", pch = 19, type = "p")

# Population ~ Income : 증가
# Population ~ Illiteracy : 증가
# Population ~ Area : 관계 없음
# Income ~ Illiteracy : 감소
# Income ~ Area : 증가
# Illiteracy ~ Area : 관계 없음
pairs(state.x77[ , c("Population", "Income", "Illiteracy", "Area")])
cor(state.x77[ , c("Population", "Income", "Illiteracy", "Area")])

# 음주 정보와 혈중 알코올 농도의 상관분석
beers = c(5,2,9,8,3,7,3,5,3,5)
bal = c(0.1, 0.03, 0.19, 0.12, 0.04, 0.0095, 0.07, 0.06, 0.02, 0.05)

# cbind 컬럼 추가
tbl = data.frame(cbind(beers, bal))
tbl
# class(tbl)

# plot(tbl$beers, tbl$bal)
plot(bal ~ beers, data = tbl)
# res = lm(bal ~ beers, data = tbl)
# abline(res)
cor(beers, bal)

# 연습문제 2
data = data.frame(
  "Income" = c(125000, 100000, 40000, 35000, 41000, 29000, 35000, 24000, 50000, 60000)
  , "Years of Education" = c(19, 20, 16, 16, 18, 12, 14, 12, 16, 17)
)

# 증가 관계
plot(Years.of.Education ~ Income, data = data)
# plot(Years.of.Education ~ Income, type = "b", data = data)


cor(data$Income, data$Years.of.Education)


# 선 그래프 
data = data.frame(
  month = 1:12
  , late = c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
)

plot(late ~ month, type = "l", data = data)
plot(late ~ month, type = "b", data = data, main = "월별 지각생 시계열", xlab = "월", ylab = "지각생 빈도", col = "red", pch = 19)



data = data.frame(
  month = 1:12
  , late = c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
  , late2 = c(4, 6, 5, 8, 7, 8, 10, 11, 6, 5, 7, 3)
)
# 1반 시계열
plot(late ~ month, type = "b", data = data, main = "월별 지각생 시계열", xlab = "월", ylab = "지각생 빈도", col = "red", pch = 19)

# 2반 시계열
lines(late2 ~ month, type = "b", data = data, col = "blue", pch = 19)

# 매월 및 1반 지각생의 관계성 > 관계 없음
cor(data$month, data$late)

# 매월 및 2반 지각생의 관계성 > 관계 없음
cor(data$month, data$late2)

# 연습문제 3
data = data.frame(
  year = 2015:2026
  , val = c(51014, 51245, 51446, 51635, 51811, 51973, 52123, 52261, 52388, 52504, 52609, 52704)
)
# 1반 시계열
plot(val ~ year, type = "b", data = data, main = "2015-2026 인구수 시계열", xlab = "연도", ylab = "인구수", col = "red", pch = 19)

# 증가 관계 : 0.992172
cor(data$year, data$val)


# ==============================================================================
# 2023.12.16 데이터 전처리
# ==============================================================================
x = c(1, 2, 3, NA, 5, 8)
x

sum(x)

# 1) NA 제거한 후에 합계
sum(x, na.rm = TRUE)

# 2) NA을 0으로 치환/대체
z = x
z[is.na(z)] = 0
z
sum(z, na.rm = TRUE)

# 3) x 변수 내에서 NA 제거
y = as.vector(na.omit(x))
y
sum(y)

# 2차원 배열의 NA
x = iris
x[1,2] = NA
x[1,3] = NA
x[2,3] = NA
x[3,4] = NA

head(x)

# 행에 따른 결측값
rowSums(is.na(x))

# 총 NA 결측값 개수
sum(rowSums(is.na(x)), na.rm = TRUE)

# NA 행을 제거
x2 = na.omit(x)

# 개수
dim(x2)

# 이상치
st = data.frame(state.x77)

# 미국 내 수입 데이터의 상자그림
boxplot(st$Income)

# 상자그림 내 이상값
boxplot.stats(st$Income)$out

# 연습문제 2
st = data.frame(state.x77)
boxplot(st$Income)
extVal = boxplot.stats(st$Income)$out
extVal

# 특정 컬럼에 추출 (1)
# selData = subset(st, Income == extVal)
# selData$Income = NA

# 특정 컬럼에 추출 (2)
isFlag = (st$Income == extVal)
st[isFlag, "Income"] = NA

boxplot(st$Income)

st2 = na.omit(st)


# 데이터 정렬

# 1차원 오름차순 정렬
sort(st$Income, decreasing = FALSE)

# 1차원 내림차순 정렬
sort(st$Income, decreasing = TRUE)

# 2차원 Income 컬럼을 기준으로 오름차순 정렬
# 특정 행번호
idx = order(st$Income, decreasing = FALSE)
st[idx, ]

# 내림차순 정렬
idx = order(st$Income, decreasing = TRUE)
st[idx, ]


# 연습문제3
# 1. state.x77 데이터셋을 Population 을 기준으로 오름차순 정렬을 하시오
st = data.frame(state.x77)
idx = order(st$Population, decreasing = FALSE)
st[idx, ]

sort(st$Population, decreasing = FALSE)


# 조건 선택
# st의 Income 컬럼에서 3500 초과인 행만 추출
selData = subset(st, Income > 3500)
selData

# st의 Income 컬럼에서 3500 초과인 행만 추출
# st의 Income 컬럼에서 4000 이하인 행만 추출
selData = subset(st, Income > 3500 & Income <= 4000)
selData

# 인덱스를 통해 데이터 조건 선택
idx = which(st$Income > 3500)
st[idx, "Income"]


# 연습문제 4
# 2. state.x77에서 면적 (area) 이 Alabama 보다 크고 California 보다 작은 주의 이름과 인구수 (Population), 소득 (Income), 면적 ( 을 보이시오
alaArea = st[rownames(st) == "Alabama", "Area"]
alaArea

calArea = st[rownames(st) == "California", "Area"]
calArea

idx = which(st$Area > alaArea & st$Area  < calArea)
st[idx, c("Population", "Income", "Area")]

# 데이터 요약
# 숫자형 데이터, 조건 특성, 통계 계산 (평균, 합계 등)
agg = aggregate(iris[-5], by = list(iris$Species), FUN = mean)
agg

# 꽃 품종별로 표준편차 
agg = aggregate(iris[-5], by = list(iris$Species), FUN = sd)
agg


# mtcar 샘플 데이터
# 복수 특성 (cyl, vs)에 따른 mtcar의 컬럼별 최대값
agg = aggregate(mtcars, by = list(mtcars$cyl, mtcars$vs), FUN = max)
agg

# 데이터 병합
# 수학 점수 테이블
x = data.frame(name = c("a", "b", "c"), math = c(90, 80, 40))
x

# 국어 점수 테이블
y = data.frame(name = c("a", "b", "d"), kor = c(75, 60, 90))
y

# 두 테이블 병합
# 합집합 a,b,c,d
merge(x, y, by = c("name"), all=TRUE)

# 교집합 a,b
merge(x, y, by = c("name"), all=FALSE)

# A기준 a,b,c
merge(x, y, by = c("name"), all.x = TRUE)

# B기준 a,b,d
merge(x, y, by = c("name"), all.y = TRUE)



# ==============================================================================
# 2023.12.16
# ==============================================================================
# 패키지 설치 (1번)
# install.packages("ggplot2")

# 패키지 읽기
library(ggplot2)

# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182, 190, 200, 150, 0)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85, 80, NA, 500, 30) 

# 번호
idx = 1:length(weight)

# 성별
gender = c("남성", "남성", "남성", "남성", "남성", "남성", "남성", "여성", "여성", "여성", "여성", "여성", "여성", "여성")

# 데이터 병합
data = data.frame(idx, height, weight, gender)

# 출력
head(data)

# 요약 정보
summary(data)



# 산점도 = 점 그래프

# 기본 plot 함수
# x축 데이터, y축 데이터
# main: 그림 제목
# xlab: x축 제목
# ylab: y축 제목
# pch: 점 모양
plot(data$height, data$weight, main="Height vs Weight", xlab="Height (cm)", ylab="Weight (kg)", pch=19)

# ggplot2 함수
ggplot(data, aes(x = height, y = weight)) +
  geom_point() +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

# 히스토그램 그래프
# 연속형 -> 범주형/카테고리형

# *********************************
# 키의 분포 시각화
# *********************************
# 기본 hist 함수 사용
hist(data$height, main="Histogram of Height", xlab="Height (cm)", ylab="Frequency")

# ggplot 함수
ggplot(data, aes(x = height)) +
  geom_histogram(color = "white") +
  labs(title="Histogram of Height", x="Height (cm)", y="Frequency")

# *********************************
# 몸무게의 분포 시각화 
# *********************************
# 기본 hist 함수 사용
hist(data$weight, main="Histogram of Weight", xlab="Weight (kg)", ylab="Frequency")

# ggplot 함수
ggplot(data, aes(x = weight)) +
  geom_histogram(color = "white") +
  labs(title="Histogram of Weight", x="Weight (kg)", y="Frequency")


# *********************************
# 번호에 따른 키의 점선 그래프
# *********************************
plot(data$idx, data$height, type = 'o', main="번호에 따른 키의 점선 그래프", xlab="번호", ylab="키 (cm)")

ggplot(data, aes(x = idx, y = height)) +
  geom_line() +
  geom_point() +
  labs(title="번호에 따른 키의 점선 그래프", x="번호", y="키 (cm)")


# *********************************
# 번호에 따른 몸무게의 점선 그래프
# *********************************
plot(data$idx, data$weight, type = 'o', main="번호에 따른 몸무게의 점선 그래프", xlab="번호", ylab="키 (cm)")

ggplot(data, aes(x = idx, y = weight)) +
  geom_line() +
  geom_point() +
  labs(title="번호에 따른 몸무게의 점선 그래프", x="번호", y="키 (cm)")

# *********************************
# 데이터 전처리
# *********************************
# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182, 190)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85, 80) 

# 번호
idx = 1:length(weight)

# 성별
gender = c("남성", "남성", "남성", "남성", "남성", "남성", "남성", "여성", "여성", "여성", "여성")

# 데이터 병합
data = data.frame(idx, height, weight, gender)

# 결측값 (NA) 삭제
dataL1 = na.omit(data)
dataL1


# *********************************
# ggplot2 편리성
# *********************************
# 성별에 따른 점 그래프 (1) : 색깔
ggplot(dataL1, aes(x = height, y = weight, color = gender)) +
  geom_point() +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

# 성별에 따른 점 그래프 (1) : 색깔 + 모양 
ggplot(dataL1, aes(x = height, y = weight, color = gender, shape = gender)) +
  geom_point() +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

# 성별에 따른 점 그래프 (1) : 색깔 + 모양 + 크기
ggplot(dataL1, aes(x = height, y = weight, size = weight, color = gender, shape = gender)) +
  geom_point() +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")


# 성별에 따른 점 그래프 (2)
ggplot(dataL1, aes(x = height, y = weight, color = gender)) +
  geom_point() +
  facet_wrap( ~ gender) +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")



# 성별에 따른 선 그래프 (1)
ggplot(data, aes(x = idx, y = height, color = gender)) +
  geom_line() +
  # geom_point(aes(shape = gender), size = 10) +
  geom_point() +
  labs(title="번호에 따른 키의 점선 그래프", x="번호", y="키 (cm)")


# 성별에 따른 선 그래프 (2)
ggplot(data, aes(x = idx, y = height, color = gender)) +
  geom_line() +
  geom_point() +
  facet_wrap( ~gender, scales = "free_x") +
  labs(title="번호에 따른 키의 점선 그래프", x="번호", y="키 (cm)")


# 성별에 따른 키 분포 (1)
ggplot(data, aes(x = height, fill = gender)) +
  # geom_histogram(color = "white", alpha = 0.5) +
  geom_boxplot() +
  labs(title="성별에 따른 키 분포", x="키")


# 성별에 따른 키 분포 (2)
ggplot(data, aes(x = height, fill = gender)) +
  # geom_histogram(color = "white", alpha = 0.5) +
  geom_boxplot() +
  facet_wrap( ~gender, scales = "free_y") +
  labs(title="성별에 따른 키 분포", x="키")


# 샘플 데이터 iris
colnames(iris)

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point()

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point()

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species, shape = Species)) +
  geom_point()

ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species, shape = Species)) +
  geom_point() +
  facet_wrap( ~ Species)


# 투명도 조절
ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width, color = Species, shape = Species)) +
  geom_point(alpha = 0.5) +
  facet_wrap( ~ Species)


# 연습문제 5.1
state.x77 = data.frame(state.x77)
colnames(state.x77)

ggplot(data = state.x77, aes(x = Income, y = Illiteracy)) +
  geom_point()

# 연습문제 5.4
colnames(iris)

ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) +
  geom_boxplot() +
  labs(title="품종에 따른 상자그림", x="품종")


# ==============================================================================
# 2023.12.30
# ==============================================================================
# 키 데이터 (cm)
height = c(160, 170, 180, 190, 200)

# 몸무게 데이터 (kg)
weight = c(50, 60, 70, 80, 90) 

# 번호
idx = 1:length(weight)

# 성별
gender = c("남성", "남성", "남성", "여성", "여성")

# 주소
addr = c("서울특별시 금천구", "인천광역시 송도", "대전광역시", "부산특별시", "제주도")

# 데이터 병합
data = data.frame(idx, height, weight, gender, addr)


# 출력
data

# https://console.cloud.google.com/apis/credentials/key/15f0ad2e-ca2e-41a1-b9bf-2d2702d47f0e?project=red-context-395619
# My First Project > API 및 서비스 > 사용자 인증 정보

# 패키지 설치
# install.packages("ggmap")

# 패키지 가져오기
library(ggmap)
library(ggplot2)

# 구글 인증키 등록
ggmap::register_google(key = "인증키")

# 구글맵 요청
map = ggmap::get_googlemap(c(128, 38), maptype="roadmap", zoom=1)

# 구글맵 시각화
ggmap::ggmap(map)

# R	특정 지역/위경도의 지도 보기
# zoom 1~14 조정
zoom = 6
# zoom = 14
# maptype = "roadmap"
# maptype = "terrain"
# maptype = "satellite"
maptype = "hybrid"
map = ggmap::get_googlemap(c(128, 38), maptype=maptype, zoom=zoom)

# 구글맵 시각화
ggmap::ggmap(map)


# 인천광역시 송도 중심 위경도
map = ggmap::get_googlemap(c(126.6564, 37.3835), maptype="hybrid", zoom=14)

ggmap::ggmap(map)


# R	지도 기반 마커/텍스트/데이터 표시
# 샘플 데이터에서 주소를 위경도 환산
geoData = ggmap::geocode(enc2utf8(data$addr))
geoData

# 샘플 데이터에서 위도, 경도 컬럼 추가
dataL1 = cbind(data, geoData)
dataL1

# 경도의 평균
mean(dataL1$lon, na.rm = TRUE)

# 위도의 평균
mean(dataL1$lat, na.rm = TRUE)

cen = c(mean(dataL1$lon, na.rm = TRUE), mean(dataL1$lat, na.rm = TRUE))
# cen = c(126.6389, 37.38610)
cen

# 마커 5개
map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=6, marker=geoData)
# map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=14, marker=geoData)

# 마커 시각화
ggmap::ggmap(map)

# 마커 + 주소 이름 시각화
ggmap::ggmap(map) +
  geom_text(data = dataL1, aes(x = lon, y = lat), size = 5, label = addr) 

# 마커 + 키 데이터값 시각화
ggmap::ggmap(map) +
  geom_text(data = dataL1, aes(x = lon, y = lat, color = height), size = 5, label = height)

# 실습코드 1
names = c("용두암", "성산일출봉", "정방폭포")
addr = c("제주시 용두암길 15", "서귀포시 성산읍 성산리", "서귀포시 동홍동 299-3")

gc = geocode(enc2utf8(addr))

df = data.frame(name = names, lon = gc$lon, lat = gc$lat)

cen = c(mean(df$lon, na.rm = TRUE), mean(df$lat, na.rm = TRUE))

map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=10, size = c(640, 640), marker=gc)

ggmap::ggmap(map)


ggmap::ggmap(map) +
  geom_text(data = df, aes(x = lon, y = lat, label = name), size = 5) 

# 용인 지역 지도 보기
addr = c("용인")

gc = geocode(enc2utf8(addr))
gc

cen = as.numeric(gc)
map = ggmap::get_googlemap(cen, maptype = "roadmap", marker=gc)
ggmap::ggmap(map)

map = ggmap::get_googlemap(cen, maptype = "terrain", marker=gc)
ggmap::ggmap(map)

map = ggmap::get_googlemap(cen, maptype = "satellite", marker=gc)
ggmap::ggmap(map)

map = ggmap::get_googlemap(cen, maptype = "hybrid", marker=gc)
ggmap::ggmap(map)


# 연습문제 1
# 1번 문제
geoData = ggmap::geocode(enc2utf8("서울시청"))
geoData 

map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=10, marker=geoData)

ggmap::ggmap(map)

# 2번 문제
geoData = ggmap::geocode(enc2utf8("금강산"))
geoData 

map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="hybrid", zoom=8, marker=geoData)

ggmap::ggmap(map)


# 3번 문제
map = ggmap::get_googlemap(c(103.867881, 1.331017), maptype="roadmap", zoom=9)

ggmap::ggmap(map)


# 수동으로 마커 표시
map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=6, marker = data.frame(lon = 128, lat = 38))

ggmap::ggmap(map)


# 연습문제 2
# 1/2번 문제
# data = data.frame(addr = c("서울특별시 금천구", "서울특별시 구로구"))
data = data.frame(addr = c("인천광역시", "대전광역시"))

# 데이터에서 주소를 위경도 환산
geoData = ggmap::geocode(enc2utf8(data$addr))
geoData

# 샘플 데이터에서 위도, 경도 컬럼 추가
dataL1 = cbind(data, geoData)
dataL1

# 중심 위경도
cen = c(mean(dataL1$lon, na.rm = TRUE), mean(dataL1$lat, na.rm = TRUE))
cen

# 마커
map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=8, marker=geoData)

# 마커 + 주소 이름 시각화
ggmap::ggmap(map) +
  geom_text(data = dataL1, aes(x = lon, y = lat, label = addr), size = 5)


# ==============================================================================
# 2024.01.06
# ==============================================================================
# [컴세바] 샘플 파일
# https://drive.google.com/drive/folders/1e7olrCOB1Vj7EgeICYdyuO4XHyN06Whq?usp=sharing

# 필수 라이브러리 설치
# install.packages(c("RColorBrewer", "wordcloud", "remotes", "RmecabKo", "RcppMeCab", "tm"))

# 자바 1.8 설치
Sys.setenv(JAVA_HOME='C:/Program Files/Java/jdk1.8.0_301')

# KoNLP 설치
remotes::install_github('haven-jeon/KoNLP', force = TRUE, upgrade = "never", INSTALL_opts=c("--no-multiarch"))

# 샘플 파일 내 scala-library-2.11.8.jar 복사/붙여넣기
# C:\Users\sangh\AppData\Local\R\win-library\4.3\KoNLP\java
# scala-library-2.11.8.jar

# RStudio 재시작

library(RColorBrewer)
library(wordcloud)
library(remotes)
library(RcppMeCab)
library(RmecabKo)
library(tm)
library(KoNLP)

# RmecabKo 라이브러리를 위한 메타 정보 (명사 사전 등)
RmecabKo::install_mecab("c:/mecab")

# KoNLP 라이브러리를 위한 메타 정보 (명사 사전 등)
KoNLP::useNIADic()

# KoNLP 명사 추출
exText ="안녕하세요, KoNLP 패키지를 사용합니다."
anText = extractNoun(exText)
print(anText)


# 텍스트 파일
# text = readLines("김영삼_취임사.txt")
text = readLines("노무현_취임사.txt")
text

# 문장 취합
contAll = paste(text, collapse = " ")
contAll

# *************************************************************
# RcppMeCab 라이브러리를 통해 명사 추출
# *************************************************************
contData = RcppMeCab::pos(utf8::as_utf8(contAll), format = "data.frame") 
contData

head(contData)

# 명사 NNG 추출
contDataL1 = subset(contData, pos == "NNG")
contDataL1

# 명사/키워드에 대한 빈도 개수
tokenData = table(contDataL1$token)
tokenData

# 명사/키워드 개수를 정렬
tokenDataL1 = sort(tokenData, decreasing = TRUE)
tokenDataL1

# 상위10개 키워드
keyword = tokenDataL1[1:10]
keyword

# 상위 10개 빈도분포 시각화
barplot(keyword)

# 상위 10개 단어 구름 = 워드 클라우드 시각화
# 컬러바
pal = brewer.pal(8, "Dark2")
wordcloud(names(keyword), freq = keyword, colors = pal)

# 상위 20개 빈도분포 
keyword = tokenDataL1[1:20]

barplot(keyword)

# 상위 20개 단어구름
pal = brewer.pal(8, "Dark2")
wordcloud(names(keyword), freq = keyword, colors = pal)

# *************************************************************
# KoNLP 라이브러리를 통해 명사 추출
# *************************************************************
# 입력 문장
# contAll

# 명사 추출
contDataL1 = KoNLP::extractNoun(contAll)
contDataL1

# 불필요한 단어 제어
# 단어 제거
contDataL1 = gsub("것", "", contDataL1)
contDataL1 = gsub("되", "", contDataL1)
contDataL1 = gsub("수", "", contDataL1)
contDataL1 = gsub("되", "", contDataL1)

# 글자 제거
contDataL1 = contDataL1[nchar(contDataL1) > 1]

# 명사/키워드에 대한 빈도 개수
tokenData = table(contDataL1)
tokenData

# 명사/키워드 개수를 정렬
tokenDataL1 = sort(tokenData, decreasing = TRUE)
tokenDataL1

# 상위10개 키워드
keyword = tokenDataL1[1:10]

# 상위 10개 빈도분포 시각화
barplot(keyword)

# 상위 10개 단어 구름 = 워드 클라우드 시각화
# 컬러바
pal = brewer.pal(8, "Dark2")

wordcloud(names(keyword), freq = keyword, colors = pal)


