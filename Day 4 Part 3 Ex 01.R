data(iris)
set.seed(123)
train_idx <- sample(nrow(iris), nrow(iris)*0.8)
train_data <- iris[train_idx,]
test_data <- iris[-train_idx,]
logreg_model <- glm(Species ~ Petal.Length + Petal.Width, data=train_data, family="binomial")
test_pred_prob <- predict(logreg_model, newdata=test_data, type="response")
test_pred <- ifelse(test_pred_prob > 0.5, "virginica", "not virginica")
conf_matrix <- table(test_pred, test_data$Species)
print(conf_matrix)