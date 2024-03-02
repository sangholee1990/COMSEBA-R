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