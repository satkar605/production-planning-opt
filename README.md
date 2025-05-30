# 🏭 Production Planning Optimization (AMPL + Python)

This project demonstrates how to solve a basic production planning problem using **AMPL** and **Python** via the `amplpy` library. The objective is to **maximize profit** while satisfying constraints on raw materials and labor.

## 📈 Problem Overview
- Product U and V must be produced within raw material and labor limits.
- Goal: Maximize profit from sales minus cost of production.
- Model: Linear Optimization, written in AMPL format.

## 🧠 What This Covers
- Clean model separation (`.mod` file)
- Python + `amplpy` integration
- Solver setup (`cbc`, `highs`)
- Result reporting with `pandas`, `matplotlib`
- Best practices from real-world operations modeling

## 📁 Project Structure
production-planning-opt/
├── production_planning_basic.mod # AMPL model
├── production_planning.ipynb # Jupyter notebook with full steps
├── requirements.txt # Python dependencies
└── README.md # This file


## ✅ Getting Started

### Install dependencies:
```bash
pip install -r requirements.txt

jupyter notebook production_planning.ipynb
