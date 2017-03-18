關閉
Week 1 Quiz

已通過
18/20 得分（90%)
測驗通過！
繼續課程
返回第 #1 週課程

正確
1 / 1 分
1。
R was developed by statisticians working at

StatSci

The University of Auckland
正確 
The R language was developed by Ross Ihaka and Robert Gentleman who were statisticians at the University of Auckland in New Zealand.

Bell Labs

Harvard University

錯誤
0 / 1 分
2。
The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition? Select all that apply.

The freedom to redistribute copies so you can help your neighbor.
未選擇的是正確的 

The freedom to sell the software for any price.
正確 
This is not part of the free software definition. The free software definition does not mention anything about selling software (although it does not disallow it).

The freedom to restrict access to the source code for the software.
這應該被選擇 

The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.
這個選項的答案不正確 
This is freedom 3.

The freedom to study how the program works, and adapt it to your needs.
未選擇的是正確的 

The freedom to run the program, for any purpose.
未選擇的是正確的 

The freedom to prevent users from using the software for undesirable purposes.
正確 
This is not part of the free software definition. Freedom 0 requires that the users of free software be free to use the software for any purpose.

正確
1 / 1 分
3。
In R the following are all atomic data types EXCEPT: (Select all that apply)

matrix
正確 
'matrix' is not an atomic data type in R.

character
未選擇的是正確的 

logical
未選擇的是正確的 

numeric
未選擇的是正確的 

list
正確 
'list' is not an atomic data type in R.

array
正確 
'array' is not an atomic data type in R.

data frame
正確 
'data frame' is not an atomic data type in R.

complex
未選擇的是正確的 

integer
未選擇的是正確的 

table
正確 
'table' is not an atomic data type in R.

正確
1 / 1 分
4。
If I execute the expression x <- 4L in R, what is the class of the object `x' as determined by the `class()' function?

integer
正確 
The 'L' suffix creates an integer vector as opposed to a numeric vector.

logical

matrix

complex

character

numeric

正確
1 / 1 分
5。
What is the class of the object defined by x <- c(4, TRUE)?

logical

character

list

integer

numeric
正確 
The numeric class is the "lowest common denominator" here and so all elements will be coerced into that class.

matrix

正確
1 / 1 分
6。
If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?

a 3 by 3 matrix

a matrix with 2 columns and 3 rows
正確 
The 'cbind' function treats vectors as if they were columns of a matrix. It then takes those vectors and binds them together column-wise to create a matrix.

a vector of length 2

a 2 by 2 matrix

a vector of length 3

a 2 by 3 matrix

正確
1 / 1 分
7。
A key property of vectors in R is that

the length of a vector must be less than 32,768

elements of a vector can be of different classes

elements of a vector all must be of the same class
正確 

elements of a vector can only be character or numeric

a vector cannot have have attributes like dimensions

錯誤
0 / 1 分
8。
Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[2]] give me? Select all that apply.

a character vector of length 1.
正確 

a character vector with the elements "a" and "b".
未選擇的是正確的 

a list containing character vector with the letter "a".
未選擇的是正確的 

a list containing a character vector with the elements "a" and "b".
未選擇的是正確的 

a character vector containing the letter "a".
這應該被選擇 

正確
1 / 1 分
9。
Suppose I have a vector x <- 1:4 and y <- 2:3. What is produced by the expression x + y?

a numeric vector with the values 3, 5, 3, 4.

an error.

a warning

an integer vector with the values 3, 5, 3, 4.

an numeric vector with the values 3, 5, 5, 7.

an integer vector with the values 3, 5, 5, 7.
正確 

a numeric vector with the values 1, 2, 5, 7.

正確
1 / 1 分
10。
Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this? Select all that apply.

x[x < 10] <- 4
未選擇的是正確的 

x[x == 10] <- 4
未選擇的是正確的 

x[x > 4] <- 10
未選擇的是正確的 

x[x >= 10] <- 4
未選擇的是正確的 

x[x > 10] <- 4
正確 
You can create a logical vector with the expression x > 10 and then use the [ operator to subset the original vector x.

x[x == 4] > 10
未選擇的是正確的 

x[x >= 11] <- 4
正確 
You can create a logical vector with the expression x >= 11 and then use the [ operator to subset the original vector x.

x[x > 10] == 4
未選擇的是正確的 

正確
1 / 1 分
11。
Use the Week 1 Quiz Data Set to answer questions 11-20.

In the dataset provided for this Quiz, what are the column names of the dataset?

Ozone, Solar.R, Wind, Temp, Month, Day
正確 
You can get the column names of a data frame with the `names()' function.

Month, Day, Temp, Wind

Ozone, Solar.R, Wind

1, 2, 3, 4, 5, 6

正確
1 / 1 分
12。
Extract the first 2 rows of the data frame and print them to the console. What does the output look like?



1
2
3
  Ozone Solar.R Wind Temp Month Day
1     9      24 10.9   71     9  14
2    18     131  8.0   76     9  29



1
2
3
  Ozone Solar.R Wind Temp Month Day
1    18     224 13.8   67     9  17
2    NA     258  9.7   81     7  22



1
2
3
  Ozone Solar.R Wind Temp Month Day
1     7      NA  6.9   74     5  11
2    35     274 10.3   82     7  17



1
2
3
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
正確 
You can extract the first two rows using the [ operator and an integer sequence to index the rows.

正確
1 / 1 分
13。
How many observations (i.e. rows) are in this data frame?

160

153
正確 
You can use the `nrows()' function to compute the number of rows in a data frame.

45

129

正確
1 / 1 分
14。
Extract the last 2 rows of the data frame and print them to the console. What does the output look like?



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    31     244 10.9   78     8  19
153    29     127  9.7   82     6   7



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    34     307 12.0   66     5  17
153    13      27 10.3   76     9  18



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
正確 
The `tail()' function is an easy way to extract the last few elements of an R object.



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    11      44  9.7   62     5  20
153   108     223  8.0   85     7  25

正確
1 / 1 分
15。
What is the value of Ozone in the 47th row?

63

18

34

21
正確 
The single bracket [ operator can be used to extract individual rows of a data frame.

正確
1 / 1 分
16。
How many missing values are in the Ozone column of this data frame?

43

37
正確 
The `is.na' function can be used to test for missing values.

78

9

正確
1 / 1 分
17。
What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.

53.2

42.1
正確 
The `mean' function can be used to calculate the mean.

18.0

31.5

正確
1 / 1 分
18。
Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

212.8
正確 
You need to construct a logical vector in R to match the question's requirements. Then use that logical vector to subset the data frame.

185.9

205.0

334.0

正確
1 / 1 分
19。
What is the mean of "Temp" when "Month" is equal to 6?

85.6

75.3

79.1
正確 

90.2

正確
1 / 1 分
20。
What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

18

100

115
正確 

97



