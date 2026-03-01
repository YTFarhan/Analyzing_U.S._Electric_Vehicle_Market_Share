
# U.S. Electric Vehicle Market Share Analysis

## 📌 Overview

As a **Data Analyst for a transportation research group**, this project analyzes the growth and distribution of electric vehicles (EVs) across the United States.

Using vehicle registration data by fuel type (EV, PHEV, HEV, gasoline, diesel, ethanol, biodiesel, hydrogen), this analysis uncovers:

* Where EV adoption is happening fastest
* How EVs compare to traditional fuel vehicles
* Which alternative fuels are significant vs. niche
* Where policymakers should prioritize EV infrastructure investment

The final deliverable includes a **data-driven report and Tableau dashboard** designed for a government transportation board planning future charging infrastructure.


---


## 🎯 Project Objective

Provide data-driven insights to support:

* EV charging infrastructure planning
* State-level policy decisions
* Automotive manufacturer forecasting
* Alternative fuel investment strategies


---


## 📊 Dashboard Preview

<img width="1187" height="793" alt="Screenshot 2026-02-28 200000" src="https://github.com/user-attachments/assets/25394ea6-9b1d-432c-86e2-20fcd3fa8449" />


The Tableau dashboard includes:

* 🗺️ Geographic distribution of EV adoption by state
* 📊 Comparative fuel composition across states
* 🏆 Top 5 states leading in EV adoption
* 📉 States lagging behind
* 🥧 National alternative fuel market share breakdown

---

## 🗂 Dataset

**File:** <a href="https://github.com/YTFarhan/Analyzing_U.S._Electric_Vehicle_Market_Share/blob/main/Vehicle_Data_Cleaned.csv">Vehicle Data Cleaned</a>

**File:** <a href="https://github.com/YTFarhan/Analyzing_U.S._Electric_Vehicle_Market_Share/blob/main/Vehicle%20Data.csv">Vehicle Data</a>

**MySQL:** <a href="https://github.com/YTFarhan/Analyzing_U.S._Electric_Vehicle_Market_Share/blob/main/U.S.%20Electric%20Vehicle%20Market%20Share%20Analysis.sql">SQL Queries</a>

The dataset contains:

* State-level vehicle registration counts
* Fuel types:

  * Electric Vehicles (EV)
  * Plug-in Hybrid Electric Vehicles (PHEV)
  * Hybrid Electric Vehicles (HEV)
  * Gasoline
  * Diesel
  * Ethanol
  * Biodiesel
  * Hydrogen

Each record represents total registered vehicles by fuel type for a U.S. state.

---

## 🛠 Tech Stack

* **Excel** – Initial inspection & validation
* **SQL** – Data cleaning and market share calculations
* **Tableau** – Dashboard development & visualization

---

## 🧹 Data Cleaning

Performed using SQL:

* Checked for missing values and zero counts
* Validated total vehicle calculations
* Standardized state names
* Ensured fuel categories were consistently labeled
* Verified totals used for percentage calculations

---

## 📈 Market Share Analysis

### Key Calculations

* EV % by state
* PHEV % by state
* HEV % by state
* Gasoline % by state
* Total alternative fuel share
* Top 5 states by EV adoption rate

**EV Adoption Formula:**

```
EV % = (EV Vehicles / Total Registered Vehicles) * 100
```

---

## 🏆 Leading States in EV Adoption

Top states by EV percentage:

* California
* District of Columbia
* Hawaii
* Nevada
* Washington

These states demonstrate strong EV penetration relative to total vehicle registrations.

---

## 📉 States Lagging in EV Adoption

States with the lowest EV market share:

* Mississippi
* North Dakota
* South Dakota
* West Virginia
* Wyoming

These states show limited EV adoption and represent growth opportunity markets.

---

## ⚡ Alternative Fuel Insights

National alternative fuel distribution shows:

* **Ethanol** – Meaningful market presence
* **Biodiesel** – Moderate but limited
* **Hydrogen** – Niche adoption

Hydrogen vehicles remain extremely low in overall market share, suggesting infrastructure limitations.

---

## 🔍 Comparative Insights

### California vs Other Large States

California significantly outperforms large states such as:

* Texas
* Florida
* New York

Implications:

* Strong policy incentives
* Established charging infrastructure
* Early adoption culture

Other large states show growth potential but lower penetration rates.

---

## 🧠 Key Insights for Policymakers

1. EV adoption is geographically concentrated on the West Coast and select urban regions.
2. Many central and southern states lag significantly.
3. Alternative fuels like hydrogen remain niche and infrastructure-dependent.
4. Gasoline remains dominant nationwide, but hybrid categories are steadily growing.

---

## 📍 Infrastructure Investment Recommendations

Based on adoption rates and growth potential:

### 1️⃣ Texas

* Large population
* Moderate EV adoption
* Significant infrastructure expansion opportunity

### 2️⃣ Florida

* Growing EV market
* Tourism & urban density increase charging demand

### 3️⃣ North Carolina / Arizona (example growth-state category)

* Emerging EV growth
* Infrastructure gap compared to adoption trend

**Rationale:**
These states show meaningful EV presence but lack the infrastructure maturity of leading states like California.




