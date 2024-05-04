# ========================================================
# 2024.01.13
# ========================================================
# 단축키 : <Ctrl> + Enter
# 주석 : <Ctrl> + <Shift> + c
# 변수 선언/할당
a = "Hello world"
b = "asdasd"

# 변수 출력
a

# 변수 출력2
print(a)

a = 2
a
print(a)


# 코드 2-1
2 + 3
(3 + 6) * 8
2 ^ 3

# 코드 2-3
log(10) + 5
sqrt(25)
max(5, 3)

99 ^ 99
99 ^ 999

# 연습 1
25 + 99
456 - 123
2 * (3 + 4)
(3 + 5 * 6) / 7
(7 - 4) * 3


# ========================================================
# 2024.01.20
# ========================================================
# 변수 선언/할당
V1 = 10

# 변수 출력
V1

# 변수 출력2
print(V1)

# 변수 출력3
cat(V1)


# 연습2 - 문제1
# 변하지 않는 수 = 상수
PI = 3.14

# 변하는 수 = 변수 (반지름) 
rad = 10
(rad ^ 2) * PI

rad = 15
(rad ^ 2) * PI

rad = 20
(rad ^ 2) * PI

# 벡터의 편의성
# v1 = c(50, 51, 52, 53)
v1 = 50:90
v1

v2 = c(1, 2, 5, 50:90)
v2

# 정수형 시작, 종료, 간격
v3 = seq(1, 101, 3)
v3

# 실수형
v4 = seq(0.1, 1.0, 0.1)
v4

v7 = rep(c("a", "b", "c"), each = 3)
v7

v8 = rep(c("a", "b", "c"), times = 3)
v8

score = c(90, 85, 70)
score

names(score) = c("John", "Tom", "Jane")
score

names(score)[2]

# 1번 요소 = 1번 인덱스
score[1]
score[2]
score[3]

# 데이터 벡터에서 구간 값 추출
d = c(1, 4, 3, 7, 8)
d

# 값 추출
idx = 1:3
idx

d[idx]
d[1:3]
d[seq(1,3,1)]
d[c(1, 3, 1)]

# 역 인덱스
d[-c(1:3)]
d[-c(1, 2, 3)]
d[-seq(1, 3, 1)]

# 연습3
d = 101:200
d

d[10]

tail(d, n = 10)

isFlag = (d %% 2 == 0)
d[isFlag]

d.20 = head(d, n = 20)
d.20

d.20[-5]
d.20[-c(5,7,9)]

# 데이터 벡터에서 값 추출
GNP = c(2090, 2450, 960)
GNP[1]

names(GNP) = c("Korea", "Japan", "Nepal")
GNP
# GNP[1]
GNP[c(1)]

# GNP["Korea"]
GNP[c("Korea")]


# ========================================================
# 2024.01.27
# ========================================================
# 벡터에 대한 산술 연산
d = c(1, 4, 3, 7, 8)
d

2 * d
d - 5

# 우선순위를 통해 괄호 필요
(3 * d) + 4

# 두 벡터의 연결
x = c(1, 2, 3)
y = c(4, 5)

c(x, y)
z = c(x, y)
z

# 두 벡터의 합
x = c(1, 2, 3)
y = c(4, 5, 6)

z = x + y
z

# 벡터에 적용 가능한 함수
d = 1:10
d

# 합계
sum(d)

# 개수 
length(d)

# 최대값
max(d)

# 최소값
min(d)

# 오름차순 정렬
sort(d)

# 내림차순 정렬
sort(d, decreasing = TRUE)

# 평균 계산
v2 = sum(d) / length(d)
v2

v3 = mean(d)
v3

# 정석
sort(x = d, decreasing = TRUE)

# 축약
sort(d, TRUE)

# 축약2
sort(d, T)

# 연습4
d1 = 1:50
d2 = 51:100

d1
d2

d1 + d2
d2 - d1
d1 * d2
d2 / d1

sum(d1)
sum(d2)

sum(d1, d2)

max(d2)
min(d2)

mean(d2) - mean(d1)

sort(d1, decreasing = TRUE)

# sort(d1, decreasing = TRUE)[1:10]
# sort(d2, decreasing = TRUE)[1:10]
z = c(
  sort(d1, decreasing = TRUE)[1:10]
  , sort(d2, decreasing = TRUE)[1:10]
)
z

# 벡터에서 특정 값 추출
d = 1:9

# 5 이상
isFlag = (d >= 5)
isFlag

# 값 추출 (조건: 5 이상)
# 5 6 7 8 9
# d[c(5, 6, 7, 8)]
d[isFlag]

# 총계/합계 (조건: 5 이상)
sum(d[isFlag])

# 조건 2개 이상 (조건: 5~7 이하)
isFlag = ((d >= 5) & (d <= 7))
isFlag

d[isFlag]
sum(d[isFlag])

# 조건 2개 이상 (조건: 3 미만, 7 이상)
isFlag = ((d < 3) | (d >= 7))
isFlag

d[isFlag]
sum(d[isFlag])

# 연습5
v1 = 51:90

isFlag = (v1 < 60)
v1[isFlag]

isFlag = (v1 < 70)
v1[isFlag]
length(v1[isFlag])

isFlag = (v1 > 65)
v1[isFlag]
sum(v1[isFlag])


isFlag = ((v1 > 60) & (v1 < 73))
isFlag
v1[isFlag]

isFlag = ((v1 > 80) | (v1 < 65))
isFlag
v1[isFlag]

# 도움말
help(sum)

# 도움말 축약
?sum

# sum(1:5)
# sum(1, 2, 3, 4, 5)

# 매트릭스 생성
z = matrix(1:20, nrow=4, ncol = 5)

# 4 x 5 행렬
z



# ========================================================
# 2024.02.03 4주차
# ========================================================
# 매트릭스 소개/활용
# 열 우선
z = matrix(1:20, nrow = 4, ncol = 5, byrow = FALSE)
z

# 행 우선
z = matrix(1:20, nrow = 4, ncol = 5, byrow = TRUE)
z

# 벡터 2개를 매트릭스 생성
x = 1:4
y = 5:8

# c: column 컬럼 (열)을 기준으로 합침
m1 = cbind(x, y)
m1

# r: row 행을 기준으로 합침
m2 = rbind(x, y)
m2

# m3 = rbind(m2, x)
# m3

# rbind(x, y, y, y)

z

# 특정 인덱스에 대한 값 추출
# 행, 열 인덱스
z[2, 3]
z[1, 4]

# 2행 전체 값
z[2, ]

# 4열 전체 값
z[ , 4]
z

# 행 이름 보기
rownames(z)

# 열 이름 보기
colnames(z)

# 행 이름 지정
rownames(z) = c("row1", "row2", "row3", "row4")

# 열 이름 지정
colnames(z) = c("col1", "col2", "col3", "col4", "col5")

# 행열 인덱스로 값 추출
z[3, 3]

# 행열 이름으로 값 추출
z["row3", "col3"]

# 연습2
# 1. 다음과 같은 내용의 matrix 를 생성하시오 이름은 score)
score = matrix(c(10, 40, 60, 20, 21, 60, 70, 30), nrow = 4, ncol = 2, byrow = FALSE)

score

colnames(score) = c("male", "female")
score

score[2, ]
score[ , "female"]
score[3, 2]


# 데이터프레임 소개/활용
# data frame 만들기
# 문자형
city = c("Seoul", "Tokyo", "Washington")
# 숫자형
rank = c(1, 3, 2)

# 데이터프레임 : 문자형 + 숫자형
city.info = data.frame(city, rank)
city.info

# R에서 기본적인 데이터셋
iris

# 5행 미리보기
head(iris)


# 데이터프레임 여부 (TRUE)
is.data.frame(iris)
is.data.frame(z)

# 인덱스로 값 추출
iris[ , 5]

# 컬럼 이름으로 값 추출
iris[ , "Species"]
iris["Species"]
iris$Species

# 컬럼 인덱스를 통해 다중 값 추출
iris[ , c(1, 2)]
iris[ , c(1, 3, 5)]

# 컬럼 이름 확인
colnames(iris)

# 컬럼 이름을 통해 다중 값 추출
iris[ , c("Sepal.Length", "Species")]

# 1~50행에서 모든 열 추출
iris[1:50, ]

# 1~50행에서 1,3열 추출
iris[1:50, c(1,3)]


# 다양한 함수 (subset 등) 예시
# 150 행 개수
# 5 열 개수
dim(iris)

dim(iris)[1]
dim(iris)[2]

# 행 개수
nrow(iris)

# 열 개수
ncol(iris)

# 열 이름 보기
names(iris)
colnames(iris)

# 데이터 요약 보기 (앞 5개)
head(iris, 5)

# 데이터 요약 보기 (뒤 10개)
head(iris, 10)

# data = iris

# 데이터 구성 정보
str(iris)

# 중복 제거
unique(iris[, 5])

# 품종의 종류 보기
table(iris[, 5])


# 열에 대한 합계
# iris[, -5]: 5번째 열을 제외
colSums(iris[, -5])
colMeans(iris[, -5])

rowSums(iris[, -5])
rowMeans(iris[, -5])


# ========================================================
# 2024.02.17 5주차
# ========================================================
z = matrix(1:20, nrow=4, ncol=5)
z

# 전치 행렬
# 행과 열 방향 변환
t(z)

# subset 조건에 맞는 행 추출
# 조건 1개 = 단일 조건
IR.1 = subset(iris, Species == "setosa")

IR.1
head(IR.1)

# 다중 조건 (& 그리고, | 또는)
# 컬럼 이름 복붙
colnames(iris)

IR.2 = subset(iris, Sepal.Length > 5.0 & Sepal.Width > 4.0)

head(IR.2)


# matrix 사칙연산
# 4행 5열 매트릭스 생성
a = matrix(1:20, 4, 5)
b = matrix(21:40, 4, 5)

a
b
a + b
b - a
b / a
a * b
3 * a


# 자료구조 확인
class(iris)
class(state.x77)

is.matrix(iris)
is.data.frame(iris)

# 데이터프레임 to 매트릭스 변환
class(iris)

# 매트릭스 (동일한 숫자형)
iris.m = as.matrix(iris[, 1:4])
iris.m
class(iris.m)

# 연습3
# state.x77

# 1번
st = data.frame(state.x77)

# 2번
st

# 3번
colnames(st)

# 4번
rownames(st)

# 5번
dim(st)
# str(st)

# 6번
summary(st)

rowSums(st)
rowMeans(st)

colSums(st)
colMeans(st)

# head(st)
subset(st, rownames(st) == "Florida")

# 50개 주의 Income 정보만 보이시오
st$Income

selData = subset(st, rownames(st) == "Texas")
selData$Area

selData = subset(st, rownames(st) == "Ohio")
selData$Population
selData$Income

# 16번
subset(st, Area >= 100000 & Frost >= 120)


# CSV/XLSX 파일 데이터 예시
st

# CSV 저장/쓰기
write.csv(st, "st.csv")
write.csv(st, "st1.csv", row.names = FALSE)

# CSV 읽기 
stDate = read.csv("st.csv")
head(stDate)


# 엑셀 라이브러리 설치
# install.packages("openxlsx")

# 엑셀 라이브러리 읽기
library(openxlsx)

# XLSX 파일 저장/쓰기
openxlsx::write.xlsx(st, "st.xlsx", rowNames = TRUE)

# XLSX 파일 읽기
xlsxData = read.xlsx("st.xlsx")
head(xlsxData)


# 연습4
stateData = data.frame(state.x77)
stateDataL1 = subset(stateData, Income >= 5000)

# CSV 저장/쓰기
write.csv(stateDataL1, "rich_state.csv")

# CSV 읽기 
stDate = read.csv("rich_state.csv")
head(stDate)

# XLSX 파일 저장/쓰기
openxlsx::write.xlsx(stateDataL1, "rich_state.xlsx", rowNames = TRUE)

# XLSX 파일 읽기
xlsxData = read.xlsx("rich_state.xlsx")
head(xlsxData)


# ========================================================
# 2024.02.24 6주차
# ========================================================
a = 10

# 이중 조건문 
if (a > 5) {
  print(a)
} else {
  print(a * 10)
}

# 그리고/또는 조건문
a = 10
b = 20

# 그리고 & (숫자 키패드 7 + 특문)
if (a > 5 & b > 5) {
  print(a + b)
}

# 또는 | (Enter 바로 위 + 특문)
if (a > 5 | b > 30) {
  print(a * b)
} 

# 삼항연산자 테스트
a = 10
b = 20

# 5줄
if (a > b) {
  c = a
} else {
  c = b
}
print(c)

# 1줄
c = ifelse(a > b, a, b)
print(c)


# 다중 if-else문
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

# 삼항연산자 ifelse
grd = ifelse(score > 90, 'A', ifelse(score > 80, 'B', 'C'))
print(grd)

# for 반복문
# 정해진 횟수를 기준으로 유한 번 반복
for (i in 1:10) {
  print(i)
}

# 2단 구구단
for (i in 1:10) {
  # cat("2 * ", i, " = ", 2 * i, "\n")
  cat("9 * ", i, " = ", 9 * i, "\n")
}

# 1~20 내에서 짝수만 출력
for (i in 1:20) {
  
  # 나머지 0인 경우
  # if (i %% 2 == 0) {
  #   print(i)
  # }
  
  if (i %% 2 == 0) print(i)
}

# 1~20 내에서 홀수만 출력
for (i in 1:20) {
  if (i %% 2 == 1)  print(i)
}

# 1~100 합계 계산
# a1 = 1
# a2 = 2
# a1 + a2

# for 반복문을 통해 합계 
sumVal = 0
n = 100
for (i in 1:n) {
  sumVal = sumVal + i
}
print(sumVal)

# 벡터화를 통해 합계
sum(1:n)

# while 반복문
# 무한한 개수 내에서 조건문 만족할 때 끝남
i = 1
while(i <= 10) {
  print(i)
  i = i + 1
}

# 1~100 합계를 while문 변경
i = 1
sumVal = 0
while(i <= 100) {
  sumVal = sumVal + i
  cat(i, sumVal, "\n")
  i = i + 1
}


# 연습문제 1.1 - 반복문
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

# 연습문제 1.1 - 벡터화
vector = 1:100
list = vector[vector %% 3 == 0]

# 합계/개수
sum(list)
length(list)

# 연습문제 1.4
sumVal = 1
for (i in 1:10) {
  sumVal = sumVal * i
  cat(i, sumVal, "\n")
}


# 사용자 정의 함수 만들기
mymax = function(x, y) {
  num.max = x 
  if (y > x) {
    num.max = y
  }
  
  return(num.max)
}
# mymax

mymax(10, 15)
mymax(20, 15)

# 삼항연산자 조건축약문 간소화
mymax2 = function(x, y) {
  return(ifelse(y > x, y, x))
}

mymax2(10, 15)
mymax2(20, 15)

mymax2(x = 20, y = 15)


# 반복문 열 평균
head(iris)

for (i in 1:4) {
  meanVal = mean(iris[ , i])
  print(meanVal)
}

# 벡터화 apply 함수 열 평균
colMeans(iris[, 1:4])

apply(iris[ , 1:4], 2, mean)

# 벡터화 apply 함수 행 평균
apply(iris[ , 1:4], 1, mean)


# ========================================================
# 2024.03.02 7주차
# ========================================================
# 범주형 - 명목형 변수 자료탐색
ans = c("Y", "Y", "N", "Y", "Y")

# 각 요소별 개수
table(ans)

# 비율
table(ans) / length(ans)

# 백분율
table(ans) / length(ans) * 100

# 비율 시각화/가시화/그림
tbData = table(ans)
barplot(tbData)

# 백분율 시각화/가시화/그림
tbData = table(ans) / length(ans) * 100
barplot(tbData)

# 막대그래프 작성
favColor = c("red", "green", "yellow", "red", "green", "red", "red")

tbData = table(favColor)
barplot(tbData)
pie(tbData)

# 샘플 파일로 막대그래프 
# 자동차 모델별 제원
head(mtcars)

# 특정 컬럼 데이터 가져오기
carb = mtcars$carb

tbData = table(carb)

# 그림 옵션 지정
barplot(tbData, main = "제목", xlab = "x축 제목", ylab = "y축 제목", col="green")
pie(tbData)

# 1x3 윈도우 생성
par(mfrow = c(1,3))
barplot(tbData, main = "제목", xlab = "x축 제목", ylab = "y축 제목", col="red")
barplot(tbData, main = "제목", xlab = "x축 제목", ylab = "y축 제목", col="blue")
barplot(tbData, main = "제목", xlab = "x축 제목", ylab = "y축 제목", col="green")

# 1x1 원도우 생성
par(mfrow = c(1,1))
barplot(tbData, main = "제목", xlab = "x축 제목", ylab = "y축 제목", col="red")

# 도움말
help(barplot)
?barplot

# Formula method
# barplot(GNP ~ Year, data = longley)
# barplot(cbind(Employed, Unemployed) ~ Year, data = longley)

# 원 그래프 생성
favColor = c("red", "green", "yellow", "red", "green", "red", "red")

tbData = table(favColor)
pie(tbData)


# 단일변수 - 연속형 변수
mydata = c(50, 60, 100, 75, 200)
mydata.big = c(mydata, 50000)

# 평균
mean(mydata)
mean(mydata.big)

# 중간값 50% 비율
median(mydata)
median(mydata.big)

# 백분율에 따른 값 분포
quantile(mydata)

# 요약 통계량
# 최소값, 25%값, 중간값=50%값, 평균, 75%값, 최대값
summary(mydata)


# 미국 주별 데이터
head(state.x77)

st.income = state.x77[, "Income"]

summary(st.income)

boxplot(st.income)

# iris 꽃 종류 데이터
# 꽃 종류에 따라 Petal.Width 상자 그림
boxplot(Petal.Width ~ Species, data = iris)

# 히스토그램
# 연속형 데이터를 이용해서 비율/개수 계산
hist(st.income)

# breaks 범주를 설정
hist(st.income, breaks = 50)

# 연습2
# 1. 이 데이터를 score 벡터에 저장하시오 . 과목명은 데이터 이름으로 저장
하시오
score = c(90, 85, 73, 80, 85, 65, 78, 50, 68, 96)

names(score) = c("KOR", "ENG", "MATH", "HIST", "SOC", "MUSIC", "BIO", "EARTH", "PHY", "ART")

# 2. score 벡터의 내용을 보이시오
score

# 3.전체 성적의 평균은 얼마인가
mean(score)
mean(score, na.rm = TRUE)

# 4.전체 성적의 중앙값은 얼마인가
median(score, na.rm = TRUE)

# 6~8번

# 연습3


# ========================================================
# 2024.03.30 11주차 다중변수 자료탐색
# ========================================================
# 키 데이터 (cm)
height = c(160, 162, 168, 170, 172, 174, 176, 178, 180, 182)

# 몸무게 데이터 (kg)
weight = c(55, 58, 62, 65, 68, 72, 75, 78, 82, 85) 

data = data.frame(height, weight)

# 출력
# print(data)
data

# 산점도 = 산포도 = 점 그래프
# 1번 방법
# 데이터 내 키 가져오기
height = data$height

# 데이터 내 몸무게 가져오기
weight = data$weight

# 점 그래프 (x축: 키, y축 몸무게)
plot(height, weight)

# 2번 방법
# 점 그래프 (x축: 키, y축 몸무게) > 증가/감소 관계
plot(data$height, data$weight)

# 그래프 제목 main, x축 제목 xlab, y축 제목 ylab
plot(data$height, data$weight, xlab = "키", ylab = "몸무게", main = "키와 몸무게의 산점도 그래프")

# 점 컬러 col, 점의 모양 pch
plot(data$height, data$weight, xlab = "키", ylab = "몸무게", main = "키와 몸무게의 산점도 그래프", col = "red", pch=19)

plot(data$weight, data$height, xlab = "몸무게", ylab = "키", main = "몸무게와 키의 산점도 그래프", col = "red", pch=19)


# 라이브러리 산포도 기능
pairs(data)


# 문제 1-3번
# R에서 제공하는 pressure 데이터셋을 이용해서 temperature 와 pressure에 대한 산점도를 그리시오 (x 축이 temperature). 두 변수간 상관 관계를 설명해 보시오
plot(pressure$temperature, pressure$pressure, xlab = "temperature", ylab = "pressure", main = "temperature와 pressure의 산점도 그래프", col = "red", pch=19)

pairs(pressure)


# 몸무게/키 상관계수 계산
cor(data$weight, data$height)

# 키/몸무게 상관계수 계산
cor(data$height, data$weight)


# 연습문제2
# 다음은 10 명의 수입과 교육받은 기간을 조사한 표이다 . 수입과 교육기간 사이에 어느정도 상관관계가 있는지 조사하시오 산점도 , 상관계수 구하기
income = c(125000, 100000, 40000, 35000, 41000, 29000, 35000, 24000, 50000, 60000)
yoe = c(19, 20, 16, 16, 18, 12, 14, 12, 16, 17)

data = data.frame(income, yoe)

plot(data$yoe, data$income, xlab = "교육기간", ylab = "수입", main = "교육기간에 따른 수입의 산점도 그래프", col = "red", pch=19)

cor(data$yoe, data$income)



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



# ========================================================
# 2024.04.06 11주차 데이터 전처리
# ========================================================
# 결측값 (NA)
z = c(1, 2, 3, NA, 5, NA, 8)

# 결측값 여부
is.na(z)

# 결측값 총 개수
sum(is.na(z))

# 결측값 치환 (NA -> 0)
z[is.na(z)] = 0
z

# 결측값 제거
x = c(1, 2, 3, NA, 5, NA, 8)
y = as.vector(na.omit(x))
y

# 2차원 배열 결측값 처리
x = iris
x[1, 2] = NA
x[1, 3] = NA
x[2, 3] = NA
x[3, 4] = NA
head(x)

# 결측값 여부
is.na(x)

# 결측값 총 개수
sum(is.na(x))

# 행/열에 따른 결측값
rowSums(is.na(x))

# 결측값 치환 (NA -> 0)
z = x
z[is.na(z)] = 0
head(z)

# 결측값 제거
y = x
head(y)
y = na.omit(y)
head(y)

# 특이값=이상치
st = data.frame(state.x77)

# 미국 내 월급 데이터
st$Income

# 상자그림 시각화 -> 이상치 확인
boxplot(st$Income)

# 이상치 값
boxplot.stats(st$Income)$out

# 이상치 제거
outVal = boxplot.stats(st$Income)$out

# 이상치=결측값 처리
# 3624   NA 4530 3378 5114
st$Income[st$Income %in% outVal] = NA

# 이상치=결측값 제거
newData = st[complete.cases(st), ]


# 데이터 정렬
v1 = c(1, 7, 6, 8, 4, 2, 3)

# 오름차순 정렬
sort(v1)

# 내림차순 정렬
sort(v1, decreasing = TRUE)

# 2차원 오름차순 정렬
st[order(st$Income, decreasing = FALSE), ]

# 2차원 내림차순 정렬
st[order(st$Income, decreasing = TRUE), ]

# 정렬, 순위
v3 = c(1, 7, 2, 5)
order(v3)
rank(v3)

# 연습문제 3
# 1. state.x77 데이터셋을 Population 을 기준으로 오름차순 정렬을 하시오
st[order(st$Population, decreasing = FALSE), ]

# 조건 선택
# iris 데이터 내 Species 컬럼 == "setosa"인 경우
subset(iris, Species == "setosa")

# iris 데이터 내 Sepal.Length 컬럼 > 5.1인 경우
subset(iris, Sepal.Length > 5.1)

# iris 데이터 내 Sepal.Length 컬럼 > 5.1인 경우 Petal.Length,Petal.Width 열 선택
subset(iris, Sepal.Length > 5.1, select = c(Petal.Length,Petal.Width))


# 1차원 데이터 선택
x = c(3, 1, 7, 8, 5, 9, 4)

# 해당 조건 내 인덱스 제공
which(x > 5)

# 해당 조건 내 인덱스 최대값
which.max(x > 5)

# 해당 조건 내 인덱스 최소값
which.min(x > 5)


# 데이터 요약
# iris 데이터셋에서 각 품종별로 꽃잎 꽃받침의 폭과 길이의 평균 을 보이시오
agg = aggregate(iris[, -5], by = list(iris$Species), FUN=mean)
agg


agg = aggregate(iris[, -5], by = list(iris$Species), FUN=max)
agg

# mtcars 데이터셋에서 cyl,vs 을 기준으로 다른 컬럼들의 최대값을 보이시오
agg = aggregate(mtcars, by = list(mtcars$cyl, mtcars$vs), FUN=max)
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
# 2024.05.04
# 08강 지도와 데이터
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
zoom = 5
# zoom = 14
# maptype = "roadmap"
# maptype = "terrain"
# maptype = "satellite"
maptype = "hybrid"
map = ggmap::get_googlemap(c(128, 38), maptype=maptype, zoom=zoom)

ggmap::ggmap(map)




# 인천광역시 송도 중심 위경도
# map = ggmap::get_googlemap(c(126.6564, 37.3835), maptype="hybrid", zoom=14)

map = ggmap::get_googlemap(c(126.6564, 37.3835), maptype="hybrid", zoom=20)

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

# cen = c(mean(dataL1$lon, na.rm = TRUE), mean(dataL1$lat, na.rm = TRUE))
cen = c(126.6389, 37.38610)
  
  
# 마커 5개
map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=10, marker=geoData)
# map = ggmap::get_googlemap(cen, maptype="roadmap", zoom=6)
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

# map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=10, marker=geoData)
map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=10)

ggmap::ggmap(map)

# 수동으로 마커 표시
map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="roadmap", zoom=6, marker = data.frame(lon = 128, lat = 38))

ggmap::ggmap(map)

# 집 주소
geoData = ggmap::geocode(enc2utf8("서울특별시 구로구 경서로 21"))
geoData 

map = ggmap::get_googlemap(c(geoData$lon, geoData$lat), maptype="hybrid", zoom=16)

ggmap::ggmap(map)

