# Customer Purchase Propensity — Data Cleaning & Feature Engineering Pipeline

**Exam:** Practical Exam | Set A
**Role:** Junior Data Analyst at an e-commerce company
**Scope:** Data preprocessing and feature engineering only — no model training.

## Problem
Prepare a clean, model-ready dataset for a future ML model that predicts whether a
customer will make a purchase (`purchased` = 1 or 0), using data pulled from four
different raw sources.

## Repository Contents

| File | Description |
|---|---|
| `customers.csv` | Customer demographics and IDs (raw source #1) |
| `transactions.json` | Transaction records (raw source #2) |
| `products.sql` | Product info table, importable into SQLite (raw source #3) |
| `api_users_response.json` | Additional user details, standing in for the `https://dummyjson.com/users` API call (raw source #4) |
| `DataPreprocessing.ipynb` | Full, executed Jupyter notebook — Steps 1–10 of the pipeline, in order |
| `feature_pipeline.py` | Script version of the same pipeline (`.py` alternative to the notebook) |
| `processed_customer_data.csv` | Final cleaned, transformed, feature-engineered output (52 columns, 0 missing values) |
| `Summary_Report.docx` | 1-page summary: techniques used, biggest data issues, what worked best |
| `eda_univariate_histograms.png`, `eda_bivariate.png`, `eda_heatmap.png`, `eda_pairplot.png` | EDA chart exports from Step 3 |

## How to Run
```bash
pip install pandas numpy scikit-learn scipy matplotlib seaborn
python feature_pipeline.py
# or open DataPreprocessing.ipynb in Jupyter and run all cells
```
Both produce `processed_customer_data.csv` as the final output.

## Pipeline Steps Covered
1. Project planning & problem framing (theory + ML framing as binary classification)
2. Data import & understanding (CSV, JSON, SQL, API-style source merged on shared keys)
3. EDA — univariate, bivariate, multivariate analysis
4. Handling missing data — SimpleImputer, Missing-Indicator + random sample, KNNImputer, MICE, complete-case comparison
5. Outlier detection & handling — Z-score, IQR, percentile, Winsorization
6. Handling mixed & date/time variables
7. Encoding categorical data — Label, One-Hot, Ordinal, numeric binning
8. Feature scaling — StandardScaler, MinMaxScaler, MaxAbsScaler, RobustScaler, Normalizer, ColumnTransformer
9. Feature construction & transformation — interaction features, FunctionTransformer, PowerTransformer, binning/binarization
10. Final output — `processed_customer_data.csv`

