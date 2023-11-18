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

