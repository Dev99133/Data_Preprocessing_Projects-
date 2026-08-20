# Holistic Data Preparer — Final Project

End-to-end data preprocessing and feature engineering on a synthetic **Customer Credit Risk**
dataset for a fintech use case, predicting `default_flag` (loan default: 0 = No, 1 = Yes).

## 📁 Repository Structure
```
├── data/
│   ├── transactions.csv                # main CSV source (financial + behavioral)
│   ├── customer_metadata.json          # JSON source (demographics)
│   ├── loan_repayment.db               # SQLite source (repayment history)
│   └── economic_indicators_api.json    # dummy API source (economic indicators)
├── Customer_Credit_Risk_Preprocessing.ipynb   # full notebook (Parts A–H)
├── final_cleaned_dataset.csv           # final ML-ready output
├── Project_Report.md                   # summary report (also exportable to PDF)
└── README.md
```

## 🎯 Objective
Test complete knowledge of Data Preprocessing and Feature Engineering across the full pipeline:
data understanding → cleaning → imputation → outlier handling → encoding → scaling →
transformations → feature engineering.

## 🧩 What the Notebook Covers
- **Part A** — Conceptual foundation (data analysis, project planning, ML problem framing, tensors)
- **Part B** — Data acquisition from CSV, JSON, SQL, and a dummy API
- **Part C** — Data understanding (`.info()`, `.describe()`) and missing-value imputation
  (Simple/Most-Frequent/Missing-Indicator+Random-Sample/KNN)
- **Part D** — Outlier detection (Z-score, IQR, Percentile) and treatment (Winsorization)
- **Part E** — Feature engineering: mixed variable handling, date parsing, Ordinal/Label/One-Hot
  encoding, binning, binarization, K-Means binning
- **Part F** — Feature scaling: Standardization, Min-Max, MaxAbs, Robust
- **Part G** — Feature construction & transformation: log/sqrt/reciprocal, Box-Cox, Yeo-Johnson,
  ColumnTransformer, new engineered ratios
- **Part H** — Final deliverable: cleaned, fully numeric-ready dataset

## ▶️ How to Run
```bash
pip install pandas numpy scipy scikit-learn
jupyter notebook Customer_Credit_Risk_Preprocessing.ipynb
```
Run all cells top to bottom — the notebook reads from `data/` and writes the final dataset to
`outputs/final_cleaned_dataset.csv` (adjust the `DATA_DIR` path in the second code cell if needed).

## 📊 Result Summary
- 1,200 customers, 4 merged data sources → 1 unified dataset
- 0 missing values after imputation (down from 5 columns with missing data)
- Outliers detected via 3 methods, treated via Winsorization
- 67 final columns: originals + imputed + encoded + scaled + transformed + engineered features

See `Project_Report.md` for the full write-up.

