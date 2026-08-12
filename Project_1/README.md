**Role:** Junior Data Analyst, Consumer Insights Co.
**Goal:** Predict customer **churn** from purchase behavior collected across
CSV, JSON, SQL, and API sources — by profiling, cleaning, exploring, and
preparing the data for machine learning.

> "Quality is our Motto."

---

## 📁 Project Structure

```
.
├── Data_Profiler.ipynb          # Main notebook (Parts A–E + bonus feature engineering) — pre-run with outputs
├── Data_Profiler_Theory.pdf     # Theory document: definitions & concepts for every task
├── README.md                    # This file
├── generate_data.py             # Recreates the raw multi-source dataset from scratch
├── requirements.txt             # Python dependencies
├── data/                        # Raw multi-source input data (ships with the repo)
│   ├── customers_crm.csv            # CRM export (Age, Gender, Income)
│   ├── customers_purchases.json     # E-commerce export (Purchase behavior)
│   ├── customers_support.db         # SQLite DB (Tenure, Support calls)
│   └── customers_churn_api.json     # Mock churn-labelling API response
└── outputs/                     # Generated when the notebook is run
    ├── customers_clean.csv          # Cleaned, merged dataset
    └── customers_ml_ready.csv       # Final ML-ready feature matrix
```

## 🚀 How to Run

1. Create a virtual environment (recommended) and install dependencies:
   ```bash
   python3 -m venv venv
   source venv/bin/activate        # Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```
2. Launch Jupyter and open the notebook:
   ```bash
   jupyter notebook Data_Profiler.ipynb
   ```
3. Run all cells (`Kernel → Restart & Run All`). The notebook already ships
   with executed outputs and charts, so you can also just read it top to
   bottom without re-running anything.

Optional — regenerate the raw source data from scratch (uses a fixed random
seed, so results are reproducible):
```bash
python generate_data.py
```

## 🧭 What's Inside the Notebook

| Part | Contents |
|---|---|
| **A — Fundamentals** | What is Data Analysis, how to plan a Data Science project, framing the churn ML problem, an in-depth explanation of Tensors with NumPy examples |
| **B — Data Acquisition** | Loading a CSV with Pandas, parsing a JSON file, querying a SQLite table, fetching data from a (mock) REST API |
| **C — Data Understanding & Cleaning** | `.head()`/`.info()`/`.describe()` on every source, merging into one dataset, identifying missing values & duplicates, cleaning (imputation, dtype fixes, deduplication, dropping irrelevant columns) |
| **D — Exploratory Data Analysis** | Univariate (distribution plots), Bivariate (Gender vs. Purchases, Income vs. Churn), Multivariate (correlation heatmap, pair plot) — each with a written interpretation |
| **E — Data Profiling** | A profiling summary (overview, missing values, descriptive stats, correlations, automatic data-quality warnings), plus the exact command to generate a full `ydata-profiling` HTML report if you have internet access |
| **Bonus — Feature Engineering** | Encoding, derived ratio features, binning, scaling, and a final ML-ready feature matrix |

## 📄 Theory Document

`Data_Profiler_Theory.pdf` explains, in writing, every concept used in the
notebook: data analysis, project planning (CRISP-DM), ML problem framing,
tensors, data acquisition formats, data cleaning techniques, EDA, data
profiling, feature engineering, and a quick-reference glossary — matching the
submission requirement to include a document explaining theory with
definitions.

## 📦 About the Dataset

Since no dataset was provided with the assignment, this submission includes a
**synthetic-but-realistic** "Customer Purchase Behavior" dataset (500
customers), deliberately generated with the same messiness real data has:
missing values, inconsistent category labels (`Male`/`M`/`m`), a currency
column stored as text (`"$54,200.00"`), duplicate rows, and an irrelevant
constant column — so every cleaning step in the notebook has genuine work to
do. Churn is generated with a realistic (not perfect) relationship to income,
tenure, support calls, and recency of last purchase, so the EDA section
surfaces real, interpretable patterns.

If your instructor/company provides a real dataset instead, simply replace
the files in `data/` with the real CSV/JSON/DB/API sources, keeping the same
column names (or update the column names referenced in the notebook), and
re-run the notebook.

## ✅ Submission Checklist

- [x] Jupyter Notebook with practical implementation
- [x] All charts labeled, each with a short interpretation
- [x] PDF explaining theory concepts with definitions
- [x] This README.md
- [ ] Push this folder to a GitHub repository (see below)

## 🐙 Creating the GitHub Repository

```bash
git init
git add .
git commit -m "Data Profiler: data preprocessing and feature engineering project"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```

---

*Shaping "skills" for "scaling" higher...!!!*
