📊 Customer Revenue Segmentation & Value Leakage Analytics

🛒 Walmart Black Friday | Revenue Intelligence System

🧠 Executive Summary

This project builds a customer revenue intelligence system on top of raw Walmart Black Friday transaction data.

Instead of reporting topline revenue, the system answers:

🟢 Who actually drives revenue?

🟢 How concentrated is revenue across customers?

🟢 Which customers are active but poorly monetized?

🟢 Where is revenue leaking despite strong demand?

The output is an executive-ready segmentation and leakage framework built using SQL, Python, and Power BI.

🏗️ System Architecture
Raw Transactions (CSV)
        ↓
SQL Analytics Engine
        - 🔵 Customer metrics
        - 🔵 Revenue ranking
        - 🔵 Value segmentation
        ↓
Python Enrichment Layer
        - 🟣 Feature validation
        - 🟣 Dataset enrichment
        ↓
Power BI Intelligence Layer
        - 🟠 Revenue concentration
        - 🟠 Value leakage diagnostics
        - 🟠 Decision dashboards


This is a pipeline, not a notebook-only analysis.

🧮 Layer 1 — SQL Revenue Analytics Engine

SQL acts as the primary computation layer.

Responsibilities

🔵 Transform transaction-level data into customer-level intelligence

🔵 Engineer revenue, frequency, and value metrics

🔵 Perform revenue-based customer segmentation

Key Outputs

🟢 Total revenue per customer

🟢 Transaction frequency

🟢 Average purchase value

🟢 Revenue-ranked segments:

🔷 Top 20%

🔷 Mid 30%

🔷 Bottom 50%

Segmentation is economically interpretable and business-aligned.

🐍 Layer 2 — Python Enrichment & Validation

Python is used selectively where SQL becomes inefficient.

Responsibilities

🟣 Final dataset enrichment

🟣 Feature consistency and validation

🟣 Preparing Power BI-ready outputs

Design principle:
SQL performs heavy analytical logic; Python complements, not duplicates.

📊 Layer 3 — Revenue Intelligence Dashboard (Power BI)

The Power BI dashboard is designed for decision-makers, not exploratory analysis.

Core KPIs

🟠 Total Revenue: 1059.05 bn

🟠 Total Customers: 5.89K

🟠 Average Purchase Value: $9K

🟠 Top 20% Revenue Share: 46.2%

These KPIs immediately highlight revenue concentration risk.

📈 Revenue Contribution by Segment

🔵 Top 20% → ~489 bn

🟣 Mid 30% → ~360 bn

⚫ Bottom 50% → ~211 bn

This indicates:

🟢 A small customer base drives a large share of revenue

🟢 Mid-tier customers represent the largest monetization opportunity

🔍 Customer Value Distribution (Transactions vs Revenue)

This visualization surfaces:

🟠 High-activity customers with low revenue yield

🟠 Monetization inefficiency despite engagement

🟠 Early signals of customer value leakage

This functions as a diagnostic tool, not a descriptive chart.

💳 Average Purchase Value by Segment

Insights:

🔴 Bottom 50% shows high activity but weak revenue efficiency

🟢 Top 20% monetizes more effectively per transaction

Leakage is driven by pricing and monetization, not demand shortage.

🕳️ Value Leakage Diagnostics

Identified leakage patterns include:

🔴 High transaction counts with low revenue contribution

🔴 Over-engaged low-value customers inflating operational cost

🔴 Under-leveraged mid-value customers lacking targeted strategies

These risks remain invisible in topline-only reporting.

🎯 Business Actions Enabled

🔵 Top 20% → Retention, personalization, upsell

🟣 Mid 30% → Pricing optimization, bundling

⚫ Bottom 50% → Cost control, selective reactivation

A one-size-fits-all retention strategy would destroy margin.

🛠️ Technologies Used
Analytics

🔵 SQL (metrics, segmentation, insights)

🟣 Python (enrichment and validation)

Visualization

🟠 Power BI (executive dashboard)

📁 Project Structure
data_raw/        → raw Walmart transaction data
data_processed/  → enriched customer dataset
sql/             → analytics & segmentation logic
python/          → enrichment notebook
powerbi/         → executive dashboard

🧾 Final Note

This project is structured as a revenue intelligence system, not a visualization exercise.

The emphasis is on:

🟢 Economic signal over visual polish

🟢 Segmentation over averages

🟢 Decisions over dashboards

🟢 Segmentation over averages

🟢 Decisions over dashboards
