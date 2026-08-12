**Data Preprocessing & Feature Engineering: Missing Value Imputation and Outlier Detection/Removal**

## 📌 Objective
Practice data preprocessing and feature engineering with a strong emphasis on handling missing
values and outlier detection/removal. As a Data Analyst for a healthcare company, this project
cleans a synthetic **patient health records** dataset (missing values + outliers from
inconsistent reporting and measurement errors) so it is ready for a downstream machine learning
task: predicting **disease risk** (0 = Low, 1 = High).

## 📂 Repository Contents

| File | Description |
|---|---|
| `Data_Cleanser_Solution.ipynb` | Main notebook — Parts A, B, and C, fully executed with outputs & charts |
| `generate_data.py` | Script that generates the synthetic raw dataset (with injected missingness/outliers) |
| `patient_health_records_raw.csv` | Raw dataset (1,000 patients) — before cleaning |
| `patient_health_records_cleaned.csv` | Final cleaned dataset — after imputation + outlier treatment |
| `Data_Cleanser_Theory_Concepts.pdf` | Short document covering the theory behind each technique used |
| `README.md` | This file |

## 🗂️ Dataset Structure

| Field | Type | Description | Missingness / Outliers |
|---|---|---|---|
| `patient_id` | String/Int | Unique identifier for each patient | None |
| `age` | Integer | Age of the patient (years) | Missing values in some records |
| `gender` | Categorical | Male / Female | Missing → category imputation |
| `region` | Categorical | North / South / East / West | Missing → most-frequent imputation |
| `bmi` | Float | Body Mass Index | Missing values + outliers (very high/low) |
| `blood_pressure` | Float | Average systolic blood pressure (mmHg) | Outliers (extreme high values) |
| `cholesterol` | Float | Cholesterol level (mg/dL) | Missing values + outliers (extreme low/high) |
| `glucose` | Float | Fasting glucose level (mg/dL) | Missing values + outliers (very high spikes) |
| `disease_risk` | Binary Int | Target variable: 0 = Low Risk, 1 = High Risk | No missing, used as target |

## 🅰️ Part A — Handling Missing Values
1. Missing-value summary report (count + % per column).
2. Six imputation techniques applied and compared:
   - Simple Imputer (Numerical — mean vs. median) on `bmi`
   - Simple Imputer (Categorical — most frequent) on `region`
   - Most Frequent Imputation on `gender`
   - Missing Indicator + Random Sample Imputation
   - KNN Imputer (multivariate)
   - MICE Algorithm (`IterativeImputer`, chained equations)

## 🅱️ Part B — Handling Outliers
3. Outlier detection using:
   - Z-score method → `cholesterol`, `glucose`
   - IQR method → `bmi`
   - Percentile method (1st/99th) → `blood_pressure`
4. Winsorization applied to cap extreme values (instead of deleting rows).
5. Before-vs-after comparison of dataset shape and summary statistics.

## 🅲 Part C — Final Clean Dataset
6. Final cleaned dataset presented: all missing values treated, all outliers handled.
7. Written report on: most effective imputation strategy, best outlier-handling method, and how
   cleaning improved dataset usability. (See notebook Section C2, and the Video walkthrough.)

## ▶️ How to Run
```bash
pip install pandas numpy scikit-learn scipy matplotlib seaborn
python generate_data.py          # regenerates the raw synthetic dataset (optional, already included)
jupyter notebook Data_Cleanser_Solution.ipynb
```

## 🎥 Video Walkthrough
[Paste your recorded video link here before submitting — see Video Requirements in the project brief]

## ✅ Key Results
- **Best imputation strategy:** MICE (`IterativeImputer`) — best preserved inter-feature
  relationships and variance vs. simple mean/median imputation.
- **Best outlier-handling method:** Winsorization — neutralized extreme values while keeping
  100% of patients in the dataset (no rows dropped).
- **Final dataset:** 1,000 patients, 0 missing cells, no extreme outliers, target variable
  intact — ready for machine learning.

---
*"Quality is our Motto." — Shaping "skills" for "scaling" higher...!!!*
