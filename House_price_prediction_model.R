# Load the dataset
d=read.csv("D:/skillcraft_technology/House_price.csv")

# Print the number of rows in the dataset
nrow(d)

# Display the complete dataset in a new window
View(d)

# Get summary statistics of all columns (min, max, mean, etc.)
summary(d)

# Display the first few rows of the dataset
head(d)

# Check for missing values in each column
colSums(is.na(d))

# Replace missing values in 'lot_size' column with the median value
d$lot_size[is.na(d$lot_size)] <- median(d$lot_size, na.rm = TRUE)

colSums(is.na(d))

# Set a seed value to make results reproducible
set.seed(123)

# Split the dataset: 80% for training, 20% for testing
index <- sample(1:nrow(d), 0.8 * nrow(d))
train <- d[index, ]
test <- d[-index, ]

# Build a linear regression model to predict 'price'
# using 'beds', 'baths', 'size', and 'lot_size' as predictors
model <- lm(price ~ beds + baths + size + lot_size, data = train)

# Display model summary (coefficients, R-squared, p-values, etc.)
summary(model)

# Predict house prices using the testing dataset
pred <- predict(model, newdata = test)

# Calculate RMSE (Root Mean Square Error) - measures prediction accuracy
rmse <- sqrt(mean((test$price - pred)^2))
rmse

# Calculate R-squared value manually to evaluate model performance
SST <- sum((test$price - mean(test$price))^2)
SSE <- sum((test$price - pred)^2)
R2 <- 1 - (SSE / SST)
R2

# Create a data frame to compare actual and predicted prices
comparison <- data.frame(Actual = test$price, Predicted = pred)
head(comparison)

# Calculate the prediction error for each observation
comparison$Error <- comparison$Actual - comparison$Predicted
head(comparison)

# Plot Actual vs Predicted Prices
plot(test$price, pred,
     main = "Actual vs Predicted Prices",
     xlab = "Actual Price",
     ylab = "Predicted Price",
     col = "blue")

# Add a red line showing the ideal (perfect prediction) line
abline(a = 0, b = 1, col = "red")

# Predict the price of a new house based on given features
new_house <- data.frame(beds = 3, baths = 2, size = 1800, lot_size = 5000)
predicted_price <- predict(model, new_house)
predicted_price
