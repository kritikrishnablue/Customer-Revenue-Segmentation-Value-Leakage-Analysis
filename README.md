📊 Customer Revenue Segmentation & Value Leakage Analytics

🛒 Walmart Black Friday | Revenue Intelligence System

🧠 1. Executive Summary

This project builds a customer revenue intelligence system on top of raw Walmart Black Friday transaction data.

Instead of reporting topline revenue, the system answers:

💰 Who actually drives revenue?

📊 How concentrated is revenue across customers?

⚠️ Which customers are active but poorly monetized?

🕳️ Where is revenue leaking despite strong demand?

The output is an executive-ready segmentation & leakage framework powered by SQL, Python, and Power BI.

🏗️ 2. System Architecture
📂 Raw Transactions (CSV)
        ↓
🧮 SQL Analytics Engine
   • Customer metrics
   • Revenue ranking
   • Value segmentation
        ↓
🐍 Python Enrichment Layer
   • Feature validation
   • Dataset enrichment
        ↓
📊 Power BI Intelligence Layer
   • Revenue concentration
   • Value leakage detection
   • Decision dashboards


This is a pipeline, not a notebook exercise.

🧮 3. Layer 1 — SQL Revenue Analytics Engine

SQL is the primary computation layer.

🔹 Core Responsibilities

Transform transaction-level data into customer-level intelligence

Engineer revenue and frequency metrics

Perform revenue-based segmentation

🔹 Key Outputs

Total revenue per customer

Transaction frequency

Average purchase value

Revenue-ranked customer segments:

🔵 Top 20%

🟣 Mid 30%

⚫ Bottom 50%

Segmentation is economically interpretable, not algorithmic guesswork.

🐍 4. Layer 2 — Python Enrichment & Validation

Python is used where SQL stops being optimal.

🔹 Responsibilities

Final dataset enrichment

Feature consistency checks

Preparing Power BI–ready outputs

🧠 Design choice:

Heavy logic stays in SQL. Python complements — it does not duplicate.

📊 5. Layer 3 — Revenue Intelligence Dashboard (Power BI)

This dashboard is built for decision-makers, not exploratory analysis.

📌 Core KPIs

💰 Total Revenue: 1059.05 bn

👥 Total Customers: 5.89K

🧾 Average Purchase Value: $9K

🎯 Top 20% Revenue Share: 46.2%

👉 Immediate takeaway: Revenue is concentrated but expandable.

📉 Revenue Concentration by Segment

🔵 Top 20% → ~489 bn

🟣 Mid 30% → ~360 bn

⚫ Bottom 50% → ~211 bn

This highlights:

⚠️ Dependency risk on a small customer base

🚀 Mid-tier customers as the largest growth lever

🔍 Customer Value Distribution (Transactions vs Revenue)

This visualization reveals:

High-activity customers with weak revenue yield

Monetization inefficiency despite engagement

Early warning signals of value leakage

This is a diagnostic tool, not a decorative chart.

🧾 Average Purchase Value Analysis

Key findings:

⚫ Bottom 50% → high activity, low revenue efficiency

🔵 Top 20% → stronger monetization per transaction

📌 Leakage is driven by pricing & monetization, not lack of demand.

🕳️ 6. Value Leakage Diagnostics

Identified leakage patterns:

High transaction volume with low revenue contribution

Over-engaged low-value customers increasing operational cost

Under-leveraged mid-value customers lacking targeted strategies

These risks are invisible in topline-only reporting.

🎯 7. Business Actions Enabled
Customer Segment	Strategic Action
🔵 Top 20%	Retain, personalize, upsell
🟣 Mid 30%	Pricing optimization, bundles
⚫ Bottom 50%	Cost control, selective reactivation

🚫 One-size-fits-all retention destroys margin.

🛠️ 8. Technologies Used

📐 Analytics

SQL (metrics, segmentation, insights)

Python (enrichment, validation)

📊 Visualization

Power BI (executive dashboard)

📁 9. Project Structure
📂 data_raw/          → raw Walmart transactions
📂 data_processed/    → enriched customer dataset
📂 sql/               → analytics & segmentation logic
📂 python/            → enrichment notebook
📂 powerbi/           → executive dashboard

🧾 Final Note

This project is intentionally framed as a revenue intelligence system, not a visualization exercise.

The emphasis is on:

💡 Economic signal over visual polish

🎯 Segmentation over averages

🧠 Decisions over dashboards
