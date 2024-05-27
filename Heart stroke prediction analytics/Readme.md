## Project Objective :-
This project aims to build a predictive machine learning model that can identify individuals at risk of stroke based on their demographic and health-related features. By detecting high-risk individuals early, appropriate preventive measures can be taken to reduce the occurence and impact of stroke.

## DATA DICTIONARY :-

id: Unique identifier  
gender: "Male", "Female", or "Other"  
age: Age of the patient  
hypertension: 0 if the patient doesn't have hypertension, 1 if the patient has hypertension  
heart_disease: 0 if the patient doesn't have any heart diseases, 1 if the patient has a heart disease  
ever_married: "No" or "Yes"  
work_type: "Children", "Govt_job", "Never_worked", "Private", or "Self-employed"  
Residence_type: "Rural" or "Urban"  
avg_glucose_level: Average glucose level in the blood  
bmi: Body mass index  
smoking_status: "Formerly smoked", "Never smoked", "Smokes", or "Unknown"  
stroke: 1 if the patient had a stroke, 0 if not  

## Approach Used :-

1. Imported python libraries   

- pandas, numpy  for data manipulation and data analysis  
- matplotlib, seaborn for data visualisation  

Imported provided dataset pd.read_csv(' test.xlsx ')  

2. Performed data preprocessing    
(Handling null values, Handling outliers, Feature scaling and normalisation, Encoding categorical columns)  

-> Imputing null values with suitable value  

mean - if numerical column & no outliers are present  
median - if numerical column & outliers are present  
mode - if categorical column  

-> checking for duplicates rows  

-> descriptive statistics of numerical columns(mean, max, min, 25%, 50%, 75%)  

3. Performed Exploratory data analysis  

-> Univariate analysis  
-> Bivariate analysis  

4. Feature Engineering  

-> Balance the dataset  
-> label encoding of the categorical columns  
-> Feature scaling the numerical columns  
-> find correlation b/w the variables  

4. Applied logistics regression    

-> Train test split    
-> Model training - lr.fit(X_train,y_train)  
-> Model predicting - lr.predict(X_test)  
-> Model testing - lr.score(X_test,y_test)  

5.  Model evaluation

-> confusion matrix  
-> accuracy score  
-> precision  
-> recall score  
-> f1 score 
