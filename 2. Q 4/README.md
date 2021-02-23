# Question 4



### Data viz

Interactive data viz can be found in this link:

https://bit.ly/3dElTCs

### Forecast

I focused my forecast in 4 different methods: Linear Regression, Random Forest, XGBoost and Gradient Boosting.

Goal: Forecast the sum of all visitors on a daily basis.

The variables that I used are the following:

- Id: number of unique restaurants with visits by day
- Holiday_flg: holiday flag
- Day of Week Dummies
- Month number
- Year
- End of Month Dummy

To determine the accuracy of each model I separated into train data and test data. The metrics I used are: MAE, RMSE, and MAPE.

|                   | MAE   | RMSE   | MAPE  |
| ----------------- | ----- | ------ | ----- |
| Linear Regression | 56.34 | 106.76 | 44.31 |
| Random Forest     | 29.92 | 48.45  | 33.94 |
| XGBoost           | 35.91 | 57.78  | 42.86 |
| Gradient Boosting | 29.68 | 46.14  | 32.17 |

After choosing Gradient Boosting by the performance metrics, I fitted all the dataset with that model.

For 6 months prediction, I created a daily future X dataset with all the features mentioned above.

-	Id: average number of restaurants by weekday of the past 6 months of real data.
-	Holiday_flg: same holidays as past years.
-	Day of Week Dummies
-	Month number
-	Year
-	End of Month Dummy

*For more details and code please consult "Forecast.ipynb"

The sum of all the 6-month forecast result a sum of 25.9 k visits. With a daily average of 141 visits.

| month_year | Total Visitors | Average of Visitors |
| ---------- | -------------- | ------------------- |
| Jun-17     | 4,805.00       | 160                 |
| Jul-17     | 5,035.00       | 162                 |
| Aug-17     | 4,867.00       | 157                 |
| Sep-17     | 3,003.00       | 100                 |
| Oct-17     | 4,156.00       | 134                 |
| Nov-17     | 4,082.00       | 136                 |



| day_of_week | Average of Visitors |
| ----------- | ------------------- |
| Friday      | 223.38              |
| Saturday    | 215.65              |
| Thursday    | 145.56              |
| Wednesday   | 110.62              |
| Monday      | 102.81              |
| Sunday      | 101.77              |
| Tuesday     | 92.62               |