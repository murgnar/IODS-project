# Johannes Gale
# 14.11.
# Assignement week2

a <- read.delim("https://www.mv.helsinki.fi/home/kvehkala/JYTmooc/JYTOPKYS3-data.txt", header = TRUE, sep="\t")
a
a
str(a)
head(a)
dim(a) # dimensions are 183 and 60, very interesting indeed 

a$Age
a$Age / 5
a$attitude <- a$Attitude / 10
a$attitude
install.packages('dplyr')
library(dplyr)
deep_questions <- c("D03", "D11", "D19", "D27", "D07", "D14", "D22", "D30","D06",  "D15", "D23", "D31")
surface_questions <- c("SU02","SU10","SU18","SU26", "SU05","SU13","SU21","SU29","SU08","SU16","SU24","SU32")
strategic_questions <- c("ST01","ST09","ST17","ST25","ST04","ST12","ST20","ST28")
head(deep_questions)
deep_columns <- select(a, one_of(deep_questions))
a$deep <- rowMeans(deep_columns)
surface_columns <- select(a, one_of(surface_questions))
a$surf <- rowMeans(surface_columns)
strategic_columns <- select(a, one_of(strategic_questions))
a$stra <- rowMeans(strategic_columns)
library(dplyr)
keep_columns <- c("gender","Age","attitude", "deep", "stra", "surf", "Points")
learning2014 <- select(a, one_of(keep_columns))
str(learning2014)
str(a)
