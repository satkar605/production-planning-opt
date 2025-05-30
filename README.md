

```markdown
# 🏭 Production Planning Optimization with AMPL and Python

This project presents a business optimization model for solving a **production planning problem** using the AMPL modeling language and Python integration via the `amplpy` library. It is structured to reflect best practices in model development and solution reporting for real-world decision-making.

---

## 📈 Business Context

A manufacturing company produces two versions of a product: a **higher-priced version (U)** and a **lower-priced version (V)**. Each version requires:
- **Raw materials** (which cost $10 per gram and cannot be stored),
- **Two types of labor** (Labor A and Labor B, each limited in weekly hours),
- And faces different **market demand limits**.

Key business constraints include:
- Product U is capped at 40 units/week due to market demand.
- Labor A is capped at 80 hours/week; Labor B at 100 hours/week.
- Raw material usage must be ordered weekly and discarded if unused.

The company seeks to **maximize gross profit** by determining:
1. How much raw material to order
2. How many units of product U and V to produce

---

## 🧮 Optimization Model

We formulate this problem as a **linear program**:

### 🔧 Decision Variables
- `x_M`: Raw material used (grams)
- `x_A`: Labor A used (hours)
- `x_B`: Labor B used (hours)
- `y_U`: Units of product U to produce (max 40)
- `y_V`: Units of product V to produce (unlimited)

### 🎯 Objective
Maximize profit = revenue from sales − cost of materials and labor  
\[
\text{Profit} = 270y_U + 210y_V - (10x_M + 50x_A + 40x_B)
\]

### ✅ Constraints
- Raw material: `10y_U + 9y_V ≤ x_M`
- Labor A: `y_U + y_V ≤ x_A`
- Labor B: `2y_U + y_V ≤ x_B`

---

## 📦 Repository Structure

```

basic-ampl-optimization/
├── production\_planning\_basic.mod      # AMPL model file
├── production\_planning.ipynb          # Step-by-step modeling in Jupyter
├── requirements.txt                   # Project dependencies
└── README.md                          # This file

````

---

## ⚙️ Solution Approach

This solution was built using:
- **AMPL** for model definition and solver interaction
- **`amplpy`** for Python-based execution and analysis
- **HiGHS / CBC** as solvers for computing the optimal result
- **`pandas`** for tabular reporting
- **`matplotlib`** for visual summaries

---

## 📊 Output Summary

Sample results from the optimal solution:

| Output            | Value     |
|-------------------|-----------|
| Product U units   | 0         |
| Product V units   | 80        |
| Raw Material Used | 720 g     |
| Labor A Used      | 80 hrs    |
| Labor B Used      | 80 hrs    |
| **Profit**        | $2400.00  |

Visual reports include:
- Horizontal bar charts for production levels and resource usage
- Breakdown of revenue and cost components

---

## 🚀 How to Run

### 1. Install Dependencies
```bash
pip install -r requirements.txt
````

### 2. Launch the Notebook

```bash
jupyter notebook production_planning.ipynb
```

---

## 💼 Why This Matters

This project models a **common scenario in manufacturing and supply chain**: optimizing production under cost and capacity constraints. It reflects:

* How mathematical modeling supports better operational decisions
* The role of optimization tools in bridging business questions and analytical rigor
* Best practices in separating model logic (`.mod`) from execution and reporting (`.ipynb`)

---

## 👨‍💻 Author

**Satkar Karki**
MS Business Analytics · University of South Dakota
[LinkedIn](https://www.linkedin.com/in/satkarkarki/) · [GitHub](https://github.com/satkar605)

---

## 📄 License

This project is licensed under the MIT License.

```

---

Let me know if you want this also saved into a file or added directly to your GitHub. Once this is in place, we can move forward with your **next optimization project instructions** using this structure.
```
