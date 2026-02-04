📊 Customer Revenue Segmentation & Value Leakage Analysis

Walmart Black Friday – Customer Behavior & Revenue Intelligence

1. Project Overview

This project builds an end-to-end customer analytics pipeline to transform raw Walmart Black Friday transaction data into revenue segmentation, value concentration analysis, and leakage detection.

Instead of stopping at exploratory analysis, the project focuses on answering business-critical questions:

Who actually drives revenue?

How concentrated is revenue across customers?

Which customer segments are under-monetized?

Where is revenue leaking despite strong customer activity?

The final output is an executive-ready Power BI dashboard supported by a clean SQL + Python analytical pipeline.

2. Business Problem

Retail businesses often rely on topline revenue metrics while ignoring revenue quality.

Common blind spots addressed in this project:

High transaction volume does not always mean high revenue

A small customer base often contributes a disproportionate share of revenue

Uniform retention strategies are applied to economically unequal customers

Revenue leakage remains invisible without customer-level aggregation

This project reframes raw transactional data into customer-level intelligence to support pricing, retention, and monetization strategy.

3. Raw Data Description

Dataset: Walmart Black Friday Transactions (walmart_black_friday_raw.csv)

Nature of the Raw Data

Transaction-level purchase records

No pre-aggregated customer metrics

Mixed demographic and product attributes

No built-in concept of customer value or segmentation

Key Columns in Raw Data

User_ID

Product_ID

Gender

Age

Occupation

City_Category

Stay_In_Current_City_Years

Marital_Status

Purchase

Why Raw Data Was Not Decision-Ready

The raw dataset cannot directly answer:

Who are high-value customers?

How revenue is distributed across users

Which customers generate volume but poor monetization

All analytical value in this project is engineered, not present in the raw data.

4. End-to-End Analytical Pipeline
Raw Transaction Data
        ↓
SQL-Based Customer Aggregation
        ↓
Revenue-Based Segmentation
        ↓
Python Enrichment
        ↓
Power BI Executive Dashboard


Each layer is intentionally separated to mirror real analytics workflows.

5. SQL Analytics Layer

SQL is used as the primary analytical engine.

01. Environment Setup

Database initialization

Analytical environment configuration

02. Schema & Data Load

Normalizes raw transactional data

Creates a clean and consistent schema

03. Customer Metrics Engineering

Transforms transaction-level data into customer-level KPIs:

Total revenue per customer

Total transaction count

Average purchase value

This step converts raw transactions into economically meaningful customer profiles.

04. Revenue Segmentation Logic

Customers are ranked by total revenue and segmented into:

Top 20%

Mid 30%

Bottom 50%

Segmentation is revenue-driven, interpretable, and business-aligned.

05. Business Insights Queries

Final SQL layer computes:

Revenue contribution by segment

Revenue concentration metrics

Early indicators of value leakage

6. Python Enrichment Layer

Python is used selectively for:

Final dataset enrichment

Feature validation

Preparing Power BI–ready datasets

Key design choice:

SQL performs heavy aggregation and logic, Python complements it — avoiding duplicated transformations.

7. Power BI Dashboard Overview

The Power BI dashboard is designed for decision-makers, not exploratory analysis.

Key KPIs

Total Revenue: 1059.05 bn

Total Customers: 5.89K

Average Purchase Value: $9K

Top 20% Revenue Share: 46.2%

These metrics immediately highlight revenue concentration.

Revenue Contribution by Segment

Top 20% → ~489 bn

Mid 30% → ~360 bn

Bottom 50% → ~211 bn

This shows that:

A minority of customers drives nearly half of total revenue

Mid-tier customers represent the largest untapped growth opportunity

Customer Value Distribution (Transactions vs Revenue)

The scatter visualization reveals:

Clear separation between value segments

Customers with high activity but weak revenue yield

Under-monetization despite strong engagement

This functions as a value leakage detector, not just a distribution chart.

Average Purchase Value by Segment

Insights:

Bottom 50% shows high activity with low revenue efficiency

Top 20% monetizes better per transaction, not just via frequency

This indicates that leakage is driven by pricing and monetization, not lack of demand.

8. Value Leakage Analysis

Revenue leakage patterns identified:

High transaction counts with low revenue yield

Over-engaged low-value customers increasing operational cost

Mid-value customers lacking targeted upsell or pricing strategies

These issues are invisible in topline revenue reporting but critical for profitability.

9. Business Recommendations
Customer Segment	Recommendation
Top 20%	Retain aggressively, personalized offers, upsell
Mid 30%	Pricing optimization, bundles, targeted incentives
Bottom 50%	Cost control, selective reactivation, deprioritization

A single retention strategy across all customers would destroy margin.

10. Technologies Used

Data Processing

SQL (customer metrics, segmentation, insights)

Python (data enrichment and validation)

Visualization

Power BI (executive dashboard)

Analytics Techniques

Revenue concentration analysis

Value-based customer segmentation

Leakage detection via behavioral mismatch

11. Project Structure
├── data_raw/
│   └── walmart_black_friday_raw.csv
├── data_processed/
│   └── customer_segments_enriched.xlsx
├── sql/
│   ├── 01_environment_setup.sql
│   ├── 02_schema_and_data_load.sql
│   ├── 03_customer_metrics.sql
│   ├── 04_segmentation_logic.sql
│   └── 05_business_insights.sql
├── python/
│   └── customer_revenue_segmentation.ipynb
├── powerbi/
│   ├── customer_revenue_segmentation.pbix
│   └── dashboard_screenshot.png
├── data_dictionary.md
└── README.md

12. Final Note

This project is not an EDA exercise.

It demonstrates how raw retail transaction data can be converted into:

Revenue strategy

Customer prioritization

Monetization insight

The emphasis is on business impact, not visual decoration.
