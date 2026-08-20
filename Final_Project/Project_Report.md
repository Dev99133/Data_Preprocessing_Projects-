# Project Report — Holistic Data Preparer (Final Project)
**Customer Credit Risk Dataset — Fintech Data Preprocessing & Feature Engineering**

---

## 1. Problem Recap
As a Junior Data Scientist, the task was to take a raw Customer Credit Risk dataset — sourced from
CSV, JSON, SQL, and an external API — and perform full-scale preprocessing and feature engineering
so it is ready to train an ML model predicting `default_flag` (loan default: 0 = No, 1 = Yes).

## 2. Data Sources
| Source | File | Contents |
|---|---|---|
| CSV | `data/transactions.csv` | Core financial + behavioral fields (1200 rows) |
| JSON | `data/customer_metadata.json` | Demographics: gender, region, education, employment |
| SQL (SQLite) | `data/loan_repayment.db` | `repayment_history` table (missed payments) |
| API (dummy) | `data/economic_indicators_api.json` | Region-level interest/inflation/unemployment rates |

All four were merged into a single working dataframe on `customer_id` (and `region` for the API data).

## 3. Missing Value Strategies & Effectiveness
| Column | Missing % | Strategy Used | Rationale |
|---|---|---|---|
| `age` | 6.0% | Simple Imputer (mean) | Roughly symmetric numeric distribution |
| `gender` | 4.0% | Most Frequent | Categorical with class imbalance |
| `employment_type` | 5.0% | Most Frequent | Categorical |
| `annual_income` | 5.0% | Missing Indicator + Random Sample | Preserves the real (skewed) distribution shape rather than biasing toward the mean |
| `credit_score` | 4.0% | KNN Imputer (multivariate, k=5) | Correlated with `annual_income`, `loan_amount`, `age` — multivariate imputation is more accurate than univariate |

**Result:** 0 missing values remain in the final dataset (down from 5 columns with 4–6% missingness each).

## 4. Outlier Handling Results
Detected using Z-score, IQR, and Percentile methods on the three flagged numeric columns:

| Column | Z-score outliers | IQR outliers | Percentile outliers |
|---|---|---|---|
| `annual_income` | 20 | 62 | 24 |
| `loan_amount` | 21 | 67 | 24 |
| `credit_score` | 12 | 24 | 19 |

**Treatment:** Winsorization (capping at the 1st/99th percentile) was applied to all three columns —
chosen over dropping rows to preserve sample size, and over Z-score capping because it's distribution-free
and robust to the heavy right-skew present in `annual_income` and `loan_amount`. `credit_score` was
additionally clipped to its valid domain (300–850).

## 5. Encoding Methods Applied
| Method | Column(s) |
|---|---|
| Ordinal Encoding | `education_level` (Primary < Secondary < Graduate < Post-Graduate) |
| Label Encoding | `gender` |
| One-Hot Encoding | `region`, `loan_purpose` |
| Quantile Binning | `annual_income` → `income_band`, `repayment_history` → 3 bins |
| Binarization | `credit_score` > 700 → `good_credit_flag` |
| K-Means Binning | `transaction_count` (4 clusters) |

## 6. Scaling & Transformations Applied
- **Standardization** (Z-score scaling): `annual_income`, `loan_amount`
- **Min-Max / MaxAbs / Robust scaling**: applied to all 7 core numeric columns (for comparison)
- **Log1p, Sqrt, Reciprocal**: applied to `spending_ratio`
- **Box-Cox**: applied to `loan_amount` — skew reduced from **2.91 → -0.004**
- **Yeo-Johnson**: applied to `annual_income` — skew reduced from **4.62 → -0.024**
- **ColumnTransformer**: demonstrated a single pipeline combining `StandardScaler` (numeric) +
  `OneHotEncoder` (categorical) in one `fit_transform` call.

## 7. Newly Engineered Features & Usefulness
| Feature | Formula | Usefulness |
|---|---|---|
| `debt_to_income_ratio` | `loan_amount / annual_income` | Strong, standard credit-risk signal |
| `avg_monthly_transactions` | `transaction_count / 6` | Normalizes behavioral activity to a monthly rate |
| `join_year/month/day/weekday` | extracted from `join_date` | Captures tenure & seasonality effects |
| `annual_income_was_missing` | missingness indicator | Lets the model learn if missingness itself is predictive |

## 8. Final Dataset Shape & Readiness
- **Rows:** 1,200
- **Columns:** 67 (original + imputed + encoded + scaled + transformed + constructed)
- **Missing values:** 0
- **Numeric columns:** 50 | **Categorical/object columns:** 7
- **File:** `final_cleaned_dataset.csv`

The dataset is now fully numeric-ready (with scaled/encoded variants alongside originals for
flexibility), free of missing values and extreme outliers, and includes engineered features with
clear credit-risk relevance — ready for ML modeling of `default_flag`.
