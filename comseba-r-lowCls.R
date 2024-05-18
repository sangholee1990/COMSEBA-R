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
# install.packages("pheatmap")
# install.packages("gplots")

# 라이브러리 읽기
library(pheatmap)
library(gplots)

pheatmap(matData[1:2, 1:2])
heatmap.2(matData[1:2, 1:2])


# 새로운 행렬 추가
x = 1:4
y = 5:8

# 열 방향으로 결합
m1 = cbind(x, y)

# 행 방향으로 결합
m2 = rbind(x, y)

m2

# 매트릭스 데이터를 기본 패키지 시각화
image(m2)

# 매트릭스 데이터를 pheatmap 패키지 시각화
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


# ===============================================================
# 2024.05.04 
# 07강 R 데이터 시각화
# ===============================================================
# 패키지 설치 (1번) 최초 1번 설치
# install.packages("ggplot2")

# 패키지 읽기 또는 가져오기
library(ggplot2)

# 키 데이터 (cm)
# height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182, 190, 200, 150, 0)
# 
# # 몸무게 데이터 (kg)
# weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85, 80, NA, 500, 30) 
# 
# # 번호
# idx = 1:length(weight)
#   
# # 데이터 병합
# data = data.frame(idx, height, weight)
# 
# # 출력
# head(data)
# 
# summary(data)
#   
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
plot(data$idx, data$weight, type = 'o', main="번호에 따른 몸무게의 점선 그래프", xlab="번호", ylab="몸무게 (kg)")

ggplot(data, aes(x = idx, y = weight)) +
  geom_line() +
  geom_point() +
  labs(title="번호에 따른 몸무게의 점선 그래프", x="번호", y="몸무게 (kg)")



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

# ggplot(dataL1, aes(x = gender, y = height, color = gender)) +
#   geom_boxplot() +
#   labs(title="Height vs Weight", x="Height (cm)", y="Weight (kg)")

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


# 성별에 따른 선 그래프 (2)
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
# My First Project > API 및 서비스 > 사용자 인증 정보

# 패키지 설치
# install.packages("ggmap")

# 패키지 가져오기
library(ggmap)
library(ggplot2)

# 구글 인증키 등록
# ggmap::register_google(key = "인증키")
ggmap::register_google(key = "AIzaSyCOfommvdtr_CVmQyL-5wFz31G21CklUE4")

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

# ==============================================================================
# 2023.12.30
# ==============================================================================
# [컴세바] 샘플 파일
# https://drive.google.com/drive/folders/1e7olrCOB1Vj7EgeICYdyuO4XHyN06Whq?usp=sharing

# 필수 라이브러리 설치
# install.packages(c("RColorBrewer", "wordcloud", "remotes", "RmecabKo", "RcppMeCab", "tm"))

# 자바 1.8 설치
# Sys.setenv(JAVA_HOME='C:/Program Files/Java/jdk1.8.0_301')

# KoNLP 설치
# remotes::install_github('haven-jeon/KoNLP', force = TRUE, upgrade = "never", INSTALL_opts=c("--no-multiarch"))

# 샘플 파일 내 scala-library-2.11.8.jar 복사/붙여넣기
# C:\Users\sangh\AppData\Local\R\win-library\4.3\KoNLP\java
# scala-library-2.11.8.jar

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

# 명사 추출
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
contAll

# 명사 추출
contDataL1 = KoNLP::extractNoun(contAll)
contDataL1

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


# ==============================================================================
# 2024.01.06
# ==============================================================================
# # 번호 
# idx = 1:100
# 
# # 기온
# temp = c(10.717007448202041, 5.573686923460693, 20.54449441373523, 30.28330588054527, 16.196478672343822, 11.685914540449406, 7.415960104155323, 7.559327693561101, 11.641893388783167, 8.000421827646655, 12.95119095093446, 6.9844838635086415, 6.968146016297769, 30.688285388683457, 9.863607821264997, 21.79047217470344, 28.203666333470917, 18.692286960171998, 9.601066335780372, 10.98788426360343, 17.98952618843542, 20.847022675356072, 15.483208761456046, 28.44438800703984, 27.530649465691955, 32.816354221193535, 5.868576470808816, 31.8707387363061, 16.77706365386453, 31.351174861399823, 25.723543284695886, 34.620462712219044, 27.778473551500042, 15.936338779903599, 20.031895185042565, 16.291674655830537, 15.947355080637143, 12.827134981431794, 19.879108861204088, 25.452198352080835, 13.320208139157305, 20.731394332316597, 8.521408825116715, 9.79535860562574, 6.404190641365663, 34.12194328311898, 5.115810545307832, 10.357399041729689, 23.38600259350977, 7.441087965599159, 31.45689509290497, 26.588604735268646, 33.9916991431368, 20.229066417222946, 14.012110494754616, 21.485017183858144, 32.9245615189392, 20.622843117255815, 13.016210955869559, 31.32196367522359, 16.15756245537384, 5.041500499969974, 12.430550674769478, 14.547005275311871, 30.763324046957063, 18.75509501199335, 18.337618634339023, 15.083067991996622, 31.420343691412388, 33.35080330821174, 34.75670987463889, 16.302238008829605, 33.98442336881514, 28.756387088927042, 25.270674429328004, 12.346684382602984, 11.493717828326293, 9.98143473563737, 32.68269830676096, 13.822299871494984, 18.592827363466355, 19.818735019616703, 28.345147863507623, 30.327048846590724, 9.172181034458385, 17.80713080633221, 30.285646635063713, 29.540999172675154, 8.072412753572493, 9.69150046603889, 14.125960747982235, 7.26077207250021, 17.739890085217787, 8.228531154487458, 22.046527810095352, 12.396708194334684, 22.892991960488683, 8.52576928710913, 34.276516052556005, 32.97683611572022)
# 
# # 습도
# humi = c(69.4391349970285, 61.03956501096481, 59.097938709484225, 84.06973023894969, 63.278703517215575, 79.61169618292169, 73.53441204608936, 32.3134347635399, 76.38660315032516, 43.01221500546244, 84.18897881109429, 32.57545143652992, 49.98432206845912, 35.98397683408524, 58.53534702509063, 79.2013461521851, 47.891241579783845, 39.05609383866249, 49.81602214181395, 78.83280851523816, 38.42303746796081, 43.64174694465011, 34.131117869602434, 72.34260263937645, 53.71399461218021, 48.650398628598964, 73.11758342046912, 50.15865254041532, 73.66627639286509, 78.91196371885881, 43.05977060746431, 88.429121810759, 39.74147687476001, 47.45045439940455, 40.787717450012494, 50.73033938138006, 58.80365326924534, 61.330552140127146, 81.21636253777632, 83.366874528952, 43.206231646854384, 67.37364193114514, 36.689763437922934, 57.5381916109241, 49.34001228279709, 48.990044727216386, 58.95505450272606, 73.78965813175606, 34.15095952754337, 82.75040026124427, 74.08882647783366, 40.589963333343604, 86.34965454524223, 60.37873344140331, 89.98851468701793, 41.83556845804426, 62.09449190299208, 47.4148825535957, 48.250413443354795, 65.46392285003941, 85.30314401224999, 78.3158313347505, 73.43648391007955, 63.55042692610213, 85.33791022004687, 59.54168440145305, 82.42993070008309, 80.0388986325979, 42.830120808095195, 76.27352777795461, 30.730269416595526, 49.369772252885255, 43.774046681516985, 60.4117775092388, 74.21118970084713, 35.86058204686345, 60.895332116206106, 86.30472130166314, 43.71879305897673, 70.62846864668545, 65.57281624686945, 30.6038217393656, 58.54957175143336, 72.52622345646293, 32.638525921445435, 82.77128898142381, 61.204884998140386, 31.839662899543075, 43.46481671525041, 87.22054178563877, 64.93918398312331, 36.448354066128275, 47.252670136833686, 57.40221755162905, 31.25700415606383, 54.69693081682553, 59.36751812608189, 44.62067251687393, 65.31834001751919, 75.19440717553061)
# 
# # 판매량
# sales = c(75.96787704811383, 44.41529355172482, 100.22042585261188, 118.78578749126899, 89.45377871248232, 75.47990294991959, 47.58865180074123, 65.2529676419691, 63.887364552673745, 65.19899212572217, 64.98507022720841, 77.32836818652858, 53.832208949455094, 114.13289422364477, 69.55134891608897, 85.78505512750013, 111.47340865137025, 84.52546204118413, 83.13278426416565, 77.44446807579648, 90.55681653963853, 93.84121147218501, 94.704086262431, 117.92875055689083, 118.43574824984043, 126.91392331668143, 40.47738255726081, 123.53632176112819, 79.25113230328414, 126.93729351621243, 120.12130548093518, 121.12873415186003, 120.15588853404462, 102.45459148667567, 89.32383901189958, 102.4753701021697, 75.46216390296186, 76.16437979564628, 91.46467978081417, 105.40879742600751, 70.60311676412837, 89.17929060003269, 60.9573428554055, 72.00420330701651, 64.37682652023757, 152.6652970524584, 70.60391097590818, 63.41609936976382, 108.29860668898195, 70.29885969579107, 121.53937332786421, 111.7160997203679, 126.86003183101666, 103.2075589870013, 67.54821954013242, 96.27229142563918, 130.8062860555136, 99.93009025332152, 80.11131364390234, 118.06050524001698, 91.58894962863498, 76.11085058849525, 77.7968832326778, 78.08070348017107, 125.9319219843334, 85.54224272230817, 80.10415006881028, 80.03186759286888, 98.43988081802199, 114.2101518562138, 130.3391291857292, 72.28472921530835, 120.25722273496486, 111.48230659681366, 89.32591416792921, 73.2199347892228, 67.29205971386668, 66.57716679277726, 138.8767067659449, 79.21794697899757, 90.13540699739958, 97.48099994541231, 117.281840234837, 108.39761328473284, 68.51884674629343, 89.32821053605429, 105.88602826241463, 129.3250608698921, 76.6483105569881, 59.19293710203945, 76.40760555711222, 55.72519134653696, 96.61826303523927, 54.21888325659664, 99.76584900720279, 66.93287832607744, 101.80527085872642, 48.910063251188234, 142.42407255329505, 115.27658532968485)
# 
# # 데이터 병합
# data = data.frame(idx, temp, humi, sales)
# data

# data$sales = as.integer(data$sales)
# write.csv(data, file = "기온-습도-아이스크림 판매량.csv", row.names = FALSE)

# 기온-온도-아이스크림 판매량 데이터 읽기
data = read.csv(file = "기온-습도-아이스크림 판매량.csv")

# *************************************************
# 선형회귀모형: 기온을 이용해서 판매량 예측
# *************************************************
# x축 기온, y축 판매량 산점도
plot(data$temp, data$sales)

# 기온으로 판매량 예측
lmModel = lm(sales ~ temp, data)

# a = 2.485, b = 43.700
lmModel

# 회귀식 시각화 
abline(coef(lmModel), col = "red")


# Y = a X + b
a = 2.485
b = 43.700

# 예측 판매량
yHat = a * (data$temp) + b
yHat

lines(data$temp, yHat, col = "blue")


# 예측 판매량
data$salesTemp = yHat
View(data)

# 기온 30도일 때 예측 판매량 118.25
yHat = a * 30 + b
yHat

predict(lmModel, newdata = data.frame(temp = 30))


# 기온 50도일 때 예측 판매량 167.95 
yHat = a * 50 + b
yHat

predict(lmModel, newdata = data.frame(temp = 50))


# ************************************************
# 선형회귀모형: 습도를 이용해서 판매량 예측
# ************************************************
# x축 습도, y축 판매량 산점도
plot(data$humi, data$sales)

# 기온으로 판매량 예측
lmModel = lm(sales ~ humi, data)

# (Intercept)         humi  
# 97.597       -0.108 
lmModel

# 회귀식 시각화 
abline(coef(lmModel), col = "red")

# 습도 30%일 때 예측 판매량
predict(lmModel, newdata = data.frame(humi = 30))

# 습도 50%일 때 예측 판매량 
predict(lmModel, newdata = data.frame(humi = 50))


# ************************************************
# 다중선형회귀모형: 기온, 습도를 이용해서 판매량 예측
# ************************************************
# # x축 습도, y축 판매량 산점도
# plot(data$humi, data$sales)

# 기온, 습도으로 판매량 예측
# Y = a X1 + b X2 + c
lmModel = lm(sales ~ temp + humi, data)

# (Intercept)         temp         humi  
# 51.1079       2.4878      -0.1263  
lmModel

# 회귀식 시각화 
# abline(coef(lmModel), col = "red")

# 기온 30, 습도 30%일 때 예측 판매량
predict(lmModel, newdata = data.frame(temp = 30, humi = 30))

# 기온 50, 습도 50%일 때 예측 판매량 
predict(lmModel, newdata = data.frame(temp = 30, humi = 50))

# 예측 결과
data$salesTempHumi  = predict(lmModel)
View(data)



# ************************************************
# 예측 결과를 비교 분석
# ************************************************
# 실제 판매량 vs 예측 판매량 (기온)
plot(data$salesTemp, data$sales)

# 상관계수 -1.0 ~ 1.0
cor(data$salesTemp, data$sales)

# 오차 계산
error = data$sales - data$salesTemp

# Mean Absolute Error (MAE)
mae = mean(abs(error))
mae

# Mean Squared Error (MSE)
mse = mean(error^2)
mse


# 실제 판매량 vs 예측 판매량 (기온, 습도)
# salesTemp -> salesTempHumi
# 실제 판매량 vs 예측 판매량 (기온)
plot(data$salesTemp, data$salesTempHumi)

# 상관계수 -1.0 ~ 1.0
cor(data$salesTemp, data$salesTempHumi)

# 오차 계산
error = data$sales - data$salesTempHumi

# Mean Absolute Error (MAE)
mae = mean(abs(error))
mae

# Mean Squared Error (MSE)
mse = mean(error^2)
mse

# 상관계수
# 0.9293881 vs 0.9954583

# mae 오차
# 7.088635 vs 6.952016

# mse 오차
# 81.16346 vs 76.45711

# ==============================================================================
# 2024.01.13
# ==============================================================================
# https://drive.google.com/drive/folders/1e7olrCOB1Vj7EgeICYdyuO4XHyN06Whq?usp=sharing
# data = read.csv(file = "기온-습도-아이스크림 판매량.csv")
# data
#
# # 판매량을 범주형 변수로 변환 (예: 낮음, 중간, 높음)
# data$salesFac = cut(data$sales, breaks=quantile(data$sales, probs=0:2/2), include.lowest=TRUE, labels=c("낮음", "높음"))
# data
#
# # 범주형 변수 시각화
# tbData = table(data$salesFac)
# tbData
# barplot(tbData)
#
# # 로지스틱 회귀 모델 적합 (기온, 습도 -> 판매량 범주)
# lmModel = glm(salesFac ~ temp + humi, data=data, family=binomial)
# summary(lmModel)
#
# # 기온 30, 습도 30%일 때 분류 판매량
# predict.glm(lmModel, newdata = data.frame(temp = 30, humi = 30), type = "response")
#
# # 기온 50, 습도 50%일 때 분류 판매량
# predict.glm(lmModel, newdata = data.frame(temp = 30, humi = 50), type = "response")
#
# # 예측 결과
# data$prdCls = predict.glm(lmModel, type = "response")
# data$prdClsName = ifelse(data$prdCls > 0.5, "높음", "낮음")
#
# View(data)
#
# # 카테고리형 정확도 측정
# yObs = data$salesFac
# yObsYn = as.numeric(yObs)
#
# yHat = data$prdCls
# yHatYn = ifelse(yHat > 0.5, 2, 1)

# conMatRes = caret::confusionMatrix(data = factor(yHatYn), reference = factor(yObsYn))
# # 정확도 : 0.809
# round(conMatRes$overall["Accuracy"], 4)
#
# # 민감도 : 0.6296
# round(conMatRes$byClass["Sensitivity"])
#
# # 특이도 : 0.8871
# round(conMatRes$byClass["Specificity"])
#
# # ROC 커브를 위한 설정
# logitRoc = ROCit::rocit(score = yHatYn, class = yObsYn)
# mainTitle = "ROC 곡선-전체 변수"
# plot(logitRoc, main = mainTitle)


# *************************************************
# 선형회귀모형: 기온을 이용해서 판매량 예측
# *************************************************
# 데이터 읽기
data = read.csv(file = "기온-습도-아이스크림 판매량.csv")
data

# x축 기온, y축 판매량 산점도
plot(data$temp, data$sales)

# 유의미한 영향 O -> 학습모형 O, 예측 O
# 유의미한 영향 X

# 기온으로 판매량 예측 (학습모형 O)
lmModel = lm(sales ~ temp, data)

# a = 2.485, b = 43.700
lmModel

# 회귀식 시각화
abline(coef(lmModel), col = "red")

# 기온 30도일 때 예측 판매량 117.738 (예측 O)
# 입력 데이터
df = data.frame(temp = 30)

# 예측 결과
prdVal = predict(lmModel, newdata = df)
prdVal

# 예측 결과 -> 정수형
as.integer(prdVal)

as.integer(predict(lmModel, newdata = data.frame(temp = 30)))

# 기온 50도일 때 예측 판매량 167.3882 (예측 O)
predict(lmModel, newdata = data.frame(temp = 50))
as.integer(predict(lmModel, newdata = data.frame(temp = 50)))


# ==============================================================================
# 2024.01.20
# ==============================================================================
# 라이브러리 설치
# install.packages("factoextra")

# 라이브러리 읽기
library(factoextra)

# 데이터 읽기
data = read.csv("학생 번호에 따른 국영수과 및 학업집중도 점수.csv", encoding = "UTF-8")
data

# 영어 및 수학 점수만 사용
dataL1 = data[ ,c("수학점수평균", "과학점수평균")]
# dataL1 = data[ ,c("영어점수평균", "수학점수평균")]
# dataL1 = data[ ,c("국어점수평균", "영어점수평균", "수학점수평균", "과학점수평균", "학업집중도")]
dataL1

# 군집화 개수
# nClu = 4
nClu = 5

# k-means 군집화 (클러스터링) 수행
kmeansModel = kmeans(dataL1, nClu)
kmeansModel

factoextra::fviz_cluster(kmeansModel, data=dataL1, stand=FALSE)

dataL2 = data.frame(data, nClu = kmeansModel$cluster)
dataL2



# 연습문제 2
radList = c(10, 15, 20)
PI = 3.14

(radList ^ 2) * PI

# 연습문제3
x = c(6, 8, 10)
y = (2 * (x ^2)) + (5 * x) + 10

y

# 연습3
d = 101:200

d
d[10]
tail(d, 10)

isFlag = ((d %% 2) == 0)
d[isFlag]

d.20 = head(d, 20)
d.20

d.20[5]
d.20[-5]

# 연습4
d1 = 1:50
d2 = 51:100

d1
d2

d1 + d2
d1 - d2
d1 * d2
d2 / d1

sum(d1, na.rm = TRUE)
sum(d2, na.rm = TRUE)

sum(c(d1, d2), na.rm = TRUE)

max(d2, na.rm = TRUE)
min(d2, na.rm = TRUE)

mean(d1, na.rm = TRUE)
mean(d2, na.rm = TRUE)

sort(d1, decreasing = TRUE)

sort(d1, decreasing = TRUE)[1:10]
head(sort(d1, decreasing = TRUE), 10)
head(sort(d2, decreasing = TRUE), 10)

d3 = c(
  head(sort(d1, decreasing = TRUE), 10)
  , head(sort(d2, decreasing = TRUE), 10)
  )

