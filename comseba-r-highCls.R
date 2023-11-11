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


# 2023.11.11
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










