# ==============================================================================
# 2023.11.04
# ==============================================================================
# 주석: Ctrl + Shift + C
# 1줄 실행 : Ctrl + Enter

# 다양한 출력
"Hellow World"
print("Hellow World")
cat("Hellow World", "\n")

# 계산기 사용
2 + 3
(3 + 6) * 8

# 사칙연산자: +, -, *, /, ^
# 덧셈
2 + 2

# 뺼셈
2 - 2

# 곱셈
2 * 2

# 나누기
2 / 2

# 거듭제곱
2 ^ 2

# 함수 사용하기
# 로그함수
log(10) + 5

# 제곱근
sqrt(25)

# 최대값
max(5, 3)

# 변수 저장
# 숫자, 문자, T/F 논리
A <- 10
B <- A + 20
cat(A, B)

# <- 대신 = 허용
A = 10
B = 20

# 자료형
# 숫자
# 문자
str = ""

# 논리형
isFlag = TRUE
isFlag = T

# 특수값
# 빈값
NULL

# 결측값
NA

# 수학적으로 정의 불가
NaN

# 무한대
Inf

# 그냥 출력
10 * 10 * 3.14

# 변수에 저장하여 출력
rad = 10
PI = 3.14

(rad ^ 2) * PI

# 벡터 만들기

# 변수로 설정하기 어려움
# 이에 벡터 사용
# x1 = 1
# x2 = 2
# x3 = 3

# 숫자형 벡터
x = c(1, 2, 3)

# 문자열 벡터
y = c("1", "2", "3")

# 연속형 숫자
# v1 = c(50, 51, 52, 53)

# 간격 1 고정
v1 = 50:90

# 시작, 종료, 간격
v3 = seq(1, 100, 3)
v3 = c(1, 4, 7, 10)

# 반복함수
rep(1, times = 5)

rep(1:5, times = 5)

# rep(1, each = 5)
rep(1:5, each = 5)

score = c(90, 85)
names(score) = c("lee", "tom")
score

# 벡터에서 1번 인덱스 추출
score[1]
names(score[1])

# 결측값을 제거하고 합계
sum(score, na.rm = TRUE)
mean(score, na.rm = TRUE)

# 함수 (매개변수명 = 값)

# lee tom 
# 90  85 
# 85 이상인 점수 추출
score > 85
score[score > 85]


sum
# 도움말
help(sum)
?sum

sum(1:5)
sum(1, 2, 3, 4, 5)

# ==============================================================================
# 2023.11.11
# ==============================================================================
# 라이브러리 설치
# install.packages("pheatmap")
# install.packages("gplots")
# install.packages("openxlsx")
# install.packages("esquisse")
# install.packages("DataExplorer")

# 라이브러리 읽기
library(pheatmap)
library(gplots)
library(openxlsx)
library(esquisse)
library(DataExplorer)

# 매트릭스 생성
# 1:20 순서, 4행, 5열 
matData = matrix(1:20, nrow=4, ncol=5)
matData

# 매트릭스 시각화
image(matData)

# 데이터를 행 방향 우선 배치
matData = matrix(1:20, nrow=4, ncol=5, byrow = TRUE)
matData

# 매트릭스 시각화
image(matData)

# 매트릭에서 속성 추출
matData[1:2, 1:2]

# R에서 제공하는 기본적인 그림 
image(matData[1:2, 1:2])

# 라이브러리 설치
install.packages("pheatmap")
install.packages("gplots")

# 라이브러리 읽기
library(pheatmap)
library(gplots)

pheatmap(matData[1:2, 1:2])
heatmap.2(matData[1:2, 1:2])


# 새로운 행렬 추가
x = 1:4
y = 5:8
# 컬럼 방향으로 결합
m1 = cbind(x, y)

# 행 방향으로 결합
m2 = rbind(x, y)
image(m2)
pheatmap(m2)


m2 
colnames(m2) = c("1", "2", "3", "4")


m2 = rbind(x, y)
# m2에서 숫자 변경 (3 -> 10)
m2[1, 3] = 10
m2

# 연습2
# 매트릭스 생성
x = c(10, 40, 60, 20)
y = c(21, 60, 70, 30)

# 컬럼으로 합치기
m1 = cbind(x, y)
colnames(m1) = c("m", "f")
score = m1

score


score = matrix(c(10, 40, 60, 20, 21, 60, 70, 30), nrow=4, ncol=2)
colnames(score) = c("m", "f")
score

# 데이터 프레임 생성
# dfData = data.frame(
#   city = c("Seoul", "Tokyo", "Washington")
#   , rank = c(1, 3, 2)
# )

# esquisser(dfData)

# R에서 제공중인 데이터 읽기
iris

# 해당 데이터를 변수 담기
data = iris

# 라이브러리 읽기
library(esquisse)
library(DataExplorer)

# 데이터프레임 시각화 (1)
esquisser(iris)

# 데이터프레임 시각화 (2)
plot_intro(iris)
plot_missing(iris)
plot_histogram(iris)

iris

# 특정 컬럼 가져오기
iris$Sepal.Length
iris[ , 1]


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


# 2023.11.18
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
# 2023.11.18
# ==============================================================================
# p138
job.type = 'A'
job.type = 'B'

# 조건 2개 (Y, N)
if (job.type == 'B') {
  bou = 200
} else {
  bou = 100
}
print(bou)

bou = ifelse(job.type == 'B', 200, 100)
print(bou)

# 다중 if-else문 
# p139
score = 95
# score = 85
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


# 반복문 p.144
# for (i in 1:5) {
for (i in 10:20) {
  print(i)
}

# p146 2단 구구단
for (i in 1:9) {
  cat("2 * ", i, " = ", (2 * i), "\n")
}

# 3단 구구단
for (i in 1:9) {
  cat("3 * ", i, " = ", (3 * i), "\n")
}

# 4단 구구단
for (i in 1:9) {
  cat("4 * ", i, " = ", (4 * i), "\n")
}

# 2~9단 구구단
for (j in 2:9) {
  for (i in 1:9) {
    cat(j, " * ", i, " = ", (j * i), "\n")
  }
}



# 2~9단 구구단 -> 2단 출력
for (j in 2:9) {
  for (i in 1:9) {
    
    if (j == 2) {
      cat(j, " * ", i, " = ", (j * i), "\n")
    }
    
  }
}



# 2~9단 구구단 -> 3~9단 출력
for (j in 2:9) {
  for (i in 1:9) {
    
    # 방법 1
    if (j == 2) {
      
    } else {
      cat(j, " * ", i, " = ", (j * i), "\n")
    }
    
    # 방법 2)
    if (j != 2) {
      cat(j, " * ", i, " = ", (j * i), "\n")
    }
  }
}



# 2~9단 구구단 -> 3~9단 출력
# 방법 3)
for (j in 2:9) {
  
  if (j == 2) next
  
  for (i in 1:9) {
    cat(j, " * ", i, " = ", (j * i), "\n")
  }
}

# p148 1~100 숫자 합
# R, Python의 경우 반복 속도 느림
sumVal = 0
for (i in 1:100) {
  sumVal = sumVal + i
  cat(i, sumVal, "\n")
}


# 벡터화를 합계
sumVal = sum(1:1000000, na.rm = TRUE)
print(sumVal)

# p151 while 1~100 숫자 합
sumVal = 0
i = 1
while(i <= 100) {
  sumVal = sumVal + i
  cat(i, sumVal, "\n")
  i = i + 1
}
print(sumVal)


# p155
iris
head(iris)

# 열의 합계
# iris[1, 1]
# iris[2, 1]
# iris[3, 1]
# ...
# iris[150, 1]

# iris[1, 1] + iris[2, 1] + iris[3, 1]

dim(iris)
nrow(iris)

sumVal = 0
for (i in 1:150) {
  sumVal = sumVal + iris[i, 1]
  # cat(i, sumVal, "\n")
}
print(sumVal)

# 2열의 합
sumVal = 0
for (i in 1:150) {
  sumVal = sumVal + iris[i, 2]
  # cat(i, sumVal, "\n")
}
print(sumVal)


# 3열의 합
sumVal = 0
for (i in 1:150) {
  sumVal = sumVal + iris[i, 3]
  # cat(i, sumVal, "\n")
}
print(sumVal)


# 방법1) 1~4열 합계 
for (j in 1:4) {
  sumVal = 0
  for (i in 1:150) {
    sumVal = sumVal + iris[i, j]
  }
  print(sumVal)
}

head(iris)
iris[1:1, 1]
iris[1:2, 1]
iris[1:3, 1]
sum(iris[1:150, 1])

# 방법2) 벡터화를 합계
for (j in 1:4) {
  sumVal = sum(iris[1:150, j])
  print(sumVal)
}

# p155 apply 함수
# 방법3) 열의 합계
apply(iris[ , 1:4], 2, sum)


# ==============================================================================
# 2023.11.25
# ==============================================================================
# 범주형 데이터 분석
ans = c("Y", "Y", "N", "Y", "Y")

# 각각의 개수
table(ans)

# 전체 개수
length(ans)

# 비율
table(ans) / length(ans)

# 백분율 = 비율 * 100
table(ans) / length(ans) * 100


# 각각의 개수를 변수 저장
tableData = table(ans)

# 바 차트로 시각화
barplot(tableData)
# barplot(tableData, main = "title", col = c("red", "blue"))
barplot(tableData, col = c("red", "blue"))
title(main = "title", col.main = "orange")
      
      
# 파이 차트 시각화
pie(tableData)
# pie(tableData, main = "title", col = c("red", "blue"))


# 연속형 데이터 (실수, 정수) 분석
# p188
# 몸무게 데이터
weight = c(60, 62, 64, 65, 68, 59)

# 평균
mean(weight)

# 중간값
median(weight)

# 최소값
min(weight)

# 최대값
max(weight)

# 요약
summary(weight)

# 히스토그램
hist(weight)

# 실전 데이터
head(iris)

# 5열 컬럼 
summary(iris)

# 실전 데이터를 통해 연속형 변수 분석
summary(iris$Sepal.Length)
hist(iris$Sepal.Length)

# 실전 데이터를 통해 범주형 변수 분석
table(iris$Species)
table(iris$Species) / length(iris$Species)
table(iris$Species) / length(iris$Species) * 100

tableData = table(iris$Species)
barplot(tableData)
pie(tableData)

# 1열에 대한 요약
summary(iris$Sepal.Length)

# 요약 정보를 시각화 (상자그림)
boxplot(iris$Sepal.Length)


head(iris)
boxplot(Sepal.Length ~ Species, data = iris)


# ==============================================================================
# 2023.12.02
# ==============================================================================
# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85) 

data = data.frame(height, weight)

# 출력
print(data)

# 산점도 = 산포도 = 점 그래프

# 1번 방법
# # 키
# height = data$height
# 
# # 몸무게
# weight = data$weight
# 
# # 점 그래프 (x축: 키, y축 몸무게)
# # plot(height, weight)

# 2번 방법
# 점 그래프 (x축: 키, y축 몸무게) > 증가/감소 관계
plot(data$height, data$weight)

# 그래프 제목 main, x축 제목 xlab, y축 제목 ylab
plot(data$height, data$weight, xlab = "키", ylab = "몸무게", main = "키와 몸무게")

# 점 컬러 col, 점의 모양 pch
plot(data$height, data$weight, xlab = "키", ylab = "몸무게", main = "키와 몸무게", col = "red", pch=19)

plot(data$weight, data$height, xlab = "몸무게", ylab = "키", main = "몸무게와 키", col = "red", pch=19)


# plot(data$height, data$weight, xlab = "키", ylab = "몸무게", main = "키와 몸무게", col = "red", pch=3)

# 라이브러리 산포도 기능
pairs(data)

# 상관계수 계산
cor(data$weight, data$height)
cor(data$height, data$weight)

# 선 그래프 p221
month = 1:12
late = c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)

# 점 그래프 = 산점도 = 산포도
plot(month, late)

# 선 그래프
plot(month, late, type = 'l')

# 그래프 제목, x/y축 제목
# x축: 월
# y축: 지각생
# 그래프 제목: 월별 지각생 통계
plot(month, late, type = 'l', xlab = "월", ylab = "지각생", main = "월별 지각생 통계")

# type = 'b'
plot(month, late, type = 'b', xlab = "월", ylab = "지각생", main = "월별 지각생 통계")

# type = 'o'
plot(month, late, type = 'o', xlab = "월", ylab = "지각생", main = "월별 지각생 통계")

# type = 's'
plot(month, late, type = 's', xlab = "월", ylab = "지각생", main = "월별 지각생 통계")

# p224 선 그래프 2개
month = 1:12
late = c(5, 8, 7, 9, 4, 6, 12, 13, 8, 6, 6, 4)
late2 = c(4, 6, 5, 8, 7, 8, 10, 11, 6, 5, 7, 3)

plot(month, late, type = 'b', xlab = "월", ylab = "지각생", main = "월별 지각생 통계", col = "blue")
lines(month, late2, type = 'b', col = "red")

plot(month, late, type = 'b', xlab = "월", ylab = "지각생", main = "월별 지각생 통계", col = "blue")
lines(month, late2, type = 'b', col = "red")

# 상관계수: 월에 따른 지각생 > 관계 없음
cor(month, late)

# 상관계수: 월에 따른 지각생2 > 관계 없음
cor(month, late2)


# 매트릭스 = 배열 = 행렬
# 자료형 1개 (숫자, 문자, ...)
z = matrix(1:20, nrow = 4, ncol = 5)
z

# 숫자 2를 가져오기
z[2, 1]

# 숫자 20를 가져오기
z[4, 5]

# 1행 가져오기 (1    5    9   13   17)
z[1,]

# 1열 가져오기
z[,1]

# 1,2열 동시에 가져오기
z[,1:2]

# 데이터프레임
# 자료형 N개, 컬럼 이름 제공
df = data.frame(num = 1:20)
df
head(df)

# 4행 가져오기
df[4, ]
df[4, "num"]
df[4, 1]
df$num[4]

# 4~5행 가져오기
df[4:5, ]
df[4:5, "num"]
df[4:5, 1]
df$num[4:5]

# ==============================================================================
# 2023.12.09
# ==============================================================================
x = c(1, 2, 3, NA, 5, 8)
sum(x)

# NA를 제거하고 합계
sum(x, na.rm = TRUE)

# NA으로 0으로 치환
x[is.na(x)] = 0
x
sum(x)


# NA 항목 삭제
x = c(1, 2, 3, NA, 5, 8)
x
y = as.vector(na.omit(x))
y


# 이상치 탐색
# 샘플 데이터 변수 할당
st = data.frame(state.x77)

# 상자그림
boxplot(st$Income)

# 이상값
boxplot.stats(st$Income)$out

# 정렬 (sort)
v1 = c(1, 7, 6, 8, 4, 2, 3)
v1

# 오름차순 정렬
sort(v1)

# 내림차순 정렬
sort(v1, decreasing = TRUE)


# 조건 선택
# st$Income 수입 데이터에서 4500 이상
# 3000 ~ 6315 분포
sort(st$Income)

# 4500 이상 데이터 선택
data = subset(st, Income > 4500)

# 선택된 데이터에서 수입
data$Income


# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85) 

data = data.frame(height, weight)

# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182, 190, 200, 150, 0)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85, 80, NA, 500, 30) 

data = data.frame(height, weight)

# 출력
head(data)

# ===================================
# 문제 1번
# ===================================
# 결측값: 키의 합계
sum(data$height, na.rm = TRUE)

# 이상치: 키 여부
boxplot(data$height)
boxplot.stats(data$height)$out

# 정렬: 키 내림차순
sort(data$height, decreasing = TRUE)

# ===================================
# 문제 2번 
# ===================================
# 결측값: 몸무게의 합계
sum(data$weight, na.rm = TRUE)

# 이상치: 몸무게 여부
boxplot(data$weight)
boxplot.stats(data$weight)$out

# 정렬: 몸무게 오름차순
sort(data$weight, decreasing = FALSE)

# 조건 선택
dataL1 = subset(data, height > 180)
dataL1

# ===================================
# 문제 3번 
# ===================================
# 키 170 초과 
# 몸무게 50 초과
# 키 170 & 몸무게 50 초과

# 데이터 요약
# 키 요약
summary(data$height)

# 몸무게 요약
summary(data$weight)

# 전체 요약
summary(data)


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
  
# 데이터 병합
data = data.frame(idx, height, weight)

# 출력
head(data)

summary(data)
  
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
# plot(data$height, data$weight, main="Height vs Weight", xlab="Height (cm)", ylab="Weight (kg)", pch=19)

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
# hist(data$height, main="Histogram of Height", xlab="Height (cm)", ylab="Frequency")

# ggplot 함수
ggplot(data, aes(x = height)) +
  geom_histogram(color = "white") +
  labs(title="Histogram of Height", x="Height (cm)", y="Frequency")

# *********************************
# 몸무게의 분포 시각화 
# *********************************
# 기본 hist 함수 사용
# hist(data$weight, main="Histogram of Weight", xlab="Weight (kg)", ylab="Frequency")

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





# *********************************
# 데이터 전처리
# *********************************
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

# 결측값 (NA) 삭제
dataL1 = na.omit(data)
dataL1


# *********************************
# ggplot2 편리성
# *********************************
# 성별에 따른 점 그래프 (1)
ggplot(dataL1, aes(x = height, y = weight, color = gender)) +
  geom_point() +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

ggplot(dataL1, aes(x = gender, y = height, color = gender)) +
  geom_boxplot() +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

# 성별에 따른 점 그래프 (2)
ggplot(dataL1, aes(x = height, y = weight, color = gender)) +
  geom_point() +
  facet_wrap( ~gender) +
  labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

# 성별에 따른 선 그래프 (1)
ggplot(data, aes(x = idx, y = height, color = gender)) +
  geom_line() +
  # geom_point(aes(shape = gender), size = 10) +
  geom_point() +
  labs(title="번호에 따른 키의 점선 그래프", x="번호", y="키 (cm)")


# 성별에 따른 선 그래프 (1)
ggplot(data, aes(x = idx, y = height, color = gender)) +
  geom_line() +
  geom_point() +
  facet_wrap( ~gender, scales = "free_x") +
  labs(title="번호에 따른 키의 점선 그래프", x="번호", y="키 (cm)")

# 성별에 따른 키 분포 (1)
ggplot(data, aes(x = height, fill = gender)) +
  geom_histogram(color = "white", alpha = 0.5) +
  labs(title="성별에 따른 키 분포", x="키")

# 성별에 따른 키 분포 (2)
ggplot(data, aes(x = height, fill = gender)) +
  geom_histogram(color = "white", alpha = 0.5) +
  facet_wrap( ~gender, scales = "free_y") +
  labs(title="성별에 따른 키 분포", x="키")


# ==============================================================================
# 2023.12.23
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
# My First Project

# 패키지 설치
install.packages("ggmap")

# 패키지 가져오기
library(ggmap)
library(ggplot2)

# 구글 인증키 등록
ggmap::register_google(key = 인증키)


# R	특정 지역/위경도의 지도 보기
# 구글맵 요청
# map = ggmap::get_googlemap(c(128, 38), maptype="roadmap", zoom=1)

# zomm 1~14 조정
zoom = 14
# maptype = "roadmap"
# maptype = "terrain"
# maptype = "satellite"
maptype = "hybrid"
map = ggmap::get_googlemap(c(128, 38), maptype=maptype, zoom=zoom)


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

# 마커 5개
map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=6, marker=geoData)
# map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=14, marker=geoData)

# 마커
# ggmap::ggmap(map)

# 마커 + 주소 이름
ggmap::ggmap(map) +
  geom_text(data = dataL1, aes(x = lon, y = lat), size = 5, label = dataL1$addr)




# 연습문제 1
# 1번 문제
geoData = ggmap::geocode(enc2utf8("서울시청"))
geoData 

map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=10, marker=geoData)

ggmap::ggmap(map)

# 수동으로 마커 표시
map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=6, marker = data.frame(lon = 128, lat = 38))

ggmap::ggmap(map)
