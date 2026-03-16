# SaaS Customer Churn & Retention Analysis

This project analyzes customer acquisition, revenue distribution, and churn behavior in a SaaS product. The goal is to identify key churn drivers and understand customer retention patterns using SQL and Tableau.

---

## Dashboard Overview

![Dashboard](dashboard/saas_churn_dashboard.png)

The dashboard summarizes key SaaS metrics including:

- Customer acquisition trends
- Revenue distribution by subscription plan
- Primary drivers of customer churn
- Feature usage segmentation
- Customer retention behavior

---

## Cohort Retention Analysis

![Cohort](dashboard/cohort_retention_heatmap.png)

Cohort analysis tracks customer retention over time based on signup month.

The heatmap highlights retention trends and identifies the time window where churn risk increases.

---

## Key Insights

### Customer Acquisition
Customer acquisition shows moderate growth with some seasonal fluctuations. The highest signup activity occurs toward the end of the observed period.

### Revenue Distribution
Enterprise plans contribute the majority of revenue, indicating strong reliance on high-tier customers.

### Customer Churn Drivers
The most common churn reasons include:

- Product feature limitations
- Customer support issues
- Budget constraints

Pricing appears to be a less significant churn driver.

### Cohort Retention
Retention rates decline gradually as cohort age increases. The most noticeable retention drop occurs between months 6–9, suggesting a key churn risk window.

### Feature Usage vs Churn
Feature usage segmentation shows similar churn rates across usage tiers (~70%).

This suggests that feature usage intensity alone may not be a strong predictor of churn for this dataset.

---

## Tools Used

- SQL – data aggregation and analysis
- Tableau – data visualization and dashboard creation
- Cohort Analysis – retention trend analysis
- SaaS Metrics – churn, MRR, and acquisition analysis

---

## Project Structure

```
saas-churn-analysis
│
├── dashboard
│   ├── saas_churn_dashboard.png
│   └── cohort_retention_heatmap.png
│
├── data
│   ├── signup_growth.csv
│   ├── churn_reasons.csv
│   ├── cohort_retention.csv
│   ├── feature_usage_segment.csv
│   └── mrr_by_plan.csv
│
├── sql
│   └── churn_analysis.sql
│
└── README.md
```

---

## Project Goal

This project demonstrates how product analytics can be used to understand:

- customer acquisition trends
- revenue distribution
- churn drivers
- retention behavior

The analysis combines SQL-based data preparation with Tableau visualization to produce an interpretable SaaS analytics dashboard.

## Business Questions

This analysis explores several key SaaS business questions:

1. How is customer acquisition trending over time?
2. Which subscription plans generate the most revenue?
3. What are the primary drivers of customer churn?
4. How does feature usage relate to churn behavior?
5. How does customer retention evolve across cohorts?
