# 🏡 House Price Prediction using Linear Regression (R)

This project predicts **house prices** based on the number of bedrooms, bathrooms, house size, and lot size using a **Linear Regression Model** built in **R**.
It demonstrates a simple and clear approach to building, training, and evaluating a regression model from scratch.

---

## 📘 Project Overview

The goal of this project is to create a **predictive model** that estimates the price of a house given its features.
The model helps in understanding how each variable (like size or number of bedrooms) influences the final price of a property.

---

## 🧠 Steps Performed

1. **Data Loading**

   * Imported the dataset `House_price.csv` containing house details and prices.

2. **Data Exploration**

   * Viewed the dataset, summary statistics, and checked for missing values.

3. **Data Cleaning**

   * Handled missing values in the `lot_size` column by replacing them with the median value.

4. **Data Splitting**

   * Divided the dataset into **80% training** and **20% testing** sets for model evaluation.

5. **Model Building**

   * Created a **Linear Regression** model to predict `price` using:

     ```
     price ~ beds + baths + size + lot_size
     ```

6. **Model Evaluation**

   * Calculated:

     * **RMSE (Root Mean Square Error)** → measures the average prediction error
     * **R² (R-squared)** → indicates how well the model fits the data

7. **Visualization**

   * Plotted **Actual vs Predicted Prices** to visualize how close the predictions are to real values.

8. **Prediction**

   * Predicted the price of a new house with specific features.

---

## 📊 Output

* **RMSE:** Indicates how accurate the model’s predictions are (lower is better).
* **R²:** Measures how well the model fits the data (closer to 1 is better).
* **Predicted Price:** Example output for a new house:

  ```
  Predicted Price ≈ [your model output here]
  ```

---

## 📈 Visualization

A scatter plot compares **actual vs predicted** house prices.
If the points are close to the red line, the model’s predictions are accurate.

---

## 🧩 Tools Used

* **Programming Language:** R
* **IDE:** RStudio
* **Libraries Used:** Base R functions (`lm`, `predict`, `plot`, etc.)

---

## 💡 Conclusion

This project demonstrates how to use **Linear Regression** in R for price prediction.
It covers essential data science steps — from loading and cleaning data to model training, evaluation, and visualization — in a beginner-friendly way.
