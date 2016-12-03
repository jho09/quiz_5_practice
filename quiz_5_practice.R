library(apaTables)
library(tidyverse)
library(apaTables)
library(haven)

data1 <- read_csv("reg_quiz2_data.csv")

# Question 4a

apa.cor.table(data1,filename="myRegressionTable1.doc",table.number=1)


block1 <- lm(aSuc ~ PAS, data=data1)
block2 <- lm(aSuc~ PAS + selfEsteem, data=data1) 

apa.reg.table(block1,block2,filename = "myRegressionTable2.doc")

# Delta R2 = .22

# Question 4b

block1b <- lm(aSuc ~ NAS, data=data1)
block2b <- lm(aSuc~ NAS + selfEsteem, data=data1)

apa.reg.table(block1b,block2b,filename = "myRegressionTable3.doc")

# Delta R2 = .23

# Question 4c

block1c <- lm(aSuc ~ NAS + PAS, data=data1)
block2c <- lm(aSuc~ NAS + PAS + selfEsteem, data=data1)

apa.reg.table(block1c,block2c,filename = "myRegressionTable4.doc")


# Delta R2 = .21
