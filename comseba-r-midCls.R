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