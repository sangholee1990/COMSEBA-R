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

