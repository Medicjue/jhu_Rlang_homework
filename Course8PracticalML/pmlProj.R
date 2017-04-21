# load the required packages
install.packages("caret")
install.packages("rattle")
install.packages("rpart")
install.packages("rpart.plot")
install.packages("randomForest")
install.packages("repmis")
install.packages("e1071")

library(caret)
library(rattle)
library(rpart)
library(rpart.plot)
library(randomForest)
library(repmis)
library(e1071)


# import the data from the URLs
# trainurl <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
# testurl <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"
# training <- source_data(trainurl, na.strings = c("NA", "#DIV/0!", ""), header = TRUE)
# testing <- source_data(testurl, na.strings = c("NA", "#DIV/0!", ""), header = TRUE)
# load data locally
training <- read.csv("pml-training.csv", na.strings = c("NA", ""))
testing <- read.csv("pml-testing.csv", na.strings = c("NA", ""))

training <- training[, colSums(is.na(training)) == 0]
testing <- testing[, colSums(is.na(testing)) == 0]

trainData <- training[, -c(1:7)]
testData <- testing[, -c(1:7)]

set.seed(7826) 
inTrain <- createDataPartition(trainData$classe, p = 0.7, list = FALSE)
train <- trainData[inTrain, ]
valid <- trainData[-inTrain, ]

control <- trainControl(method = "cv", number = 5)
fit_rpart <- train(classe ~ ., data = train, method = "rpart", 
                   trControl = control)
print(fit_rpart, digits = 4)

# predict outcomes using validation set
predict_rpart <- predict(fit_rpart, valid)
# Show prediction result
(conf_rpart <- confusionMatrix(valid$classe, predict_rpart))
## Confusion Matrix and Statistics


(accuracy_rpart <- conf_rpart$overall[1])

fit_rf <- train(classe ~ ., data = train, method = "rf", 
                trControl = control)
print(fit_rf, digits = 4)

# predict outcomes using validation set
predict_rf <- predict(fit_rf, valid)
# Show prediction result
(conf_rf <- confusionMatrix(valid$classe, predict_rf))


(accuracy_rf <- conf_rf$overall[1])

(predict(fit_rf, testData))
