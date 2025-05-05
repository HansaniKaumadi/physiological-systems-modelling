# 🌿 Branched Cylinders – Dendritic Tree Approximation

This repository contains an analytical and simulation-based study of **branched cylindrical models** representing dendritic trees in neurons. The work explores steady-state solutions of the cable equation applied to simplified neuronal geometries, focusing on first-order branching under various boundary conditions.

---

## 📖 Introduction

This assignment aims to approximate the **electrical behavior of dendritic trees** using simplified cable models consisting of a parent branch and two daughter branches. It investigates how voltage profiles change with electrotonic distance and under different physiological boundary conditions.

Key objectives include:

- Solving the cable equation using electrotonic distances.
- Applying boundary and nodal conditions to build a system of equations.
- Using MATLAB to solve and visualize voltage distributions.
- Evaluating different terminal conditions (sealed-end, short-circuit, etc.).

---

## 🧠 Model Description


<p align="center">
  <img src="https://github.com/user-attachments/assets/91d10cf1-201a-42f9-a80d-8eeb75d5fe0c" width="600"/>
</p>


The model is based on the **Rall equivalent cylinder theory**, where the dendritic structure is simplified into one parent and two daughter branches, each defined by its **electrotonic length** and **diameter**.

---

## 💻 Simulation Environment

The entire simulation is conducted using MATLAB:

<p align="center">
  <img src="https://github.com/user-attachments/assets/0003eea0-1540-499a-a139-7437bb79800e" width="300"/>
</p>


- **Software**: MATLAB R2023  
- **Core Functions**: `A\b` matrix solving, symbolic and numerical plotting


---

## 📊 Simulation Scenarios & Results

Simulations were performed under the following boundary conditions:

### 🔵 Figure 2a – Parent sealed, daughters sealed
<p align="center">
  <img src="https://github.com/user-attachments/assets/222ae3e8-1866-4d76-b23a-3be47b2da0a4" width="400"/>
</p>


---

### 🟠 Figure 2b – Parent short-circuited, daughters sealed
<p align="center">
  <img src="https://github.com/user-attachments/assets/8ba296e7-5139-4079-b9d2-1c36690c31cf" width="400"/>
</p>


---

### 🔴 Figure 2c – All branches short-circuited
<p align="center">
  <img src="https://github.com/user-attachments/assets/62c23367-ad0f-4577-90d2-e6ed1044e4fb" width="400"/>
</p>


---

### 🟣 Figure 2d – Parent sealed, daughters short-circuited
<p align="center">
  <img src="https://github.com/user-attachments/assets/3551cab9-996e-42c8-9b09-6e1f07ddf2be" width="400"/>
</p>


---

## ✅ Observations

- Voltage attenuates with electrotonic distance more significantly in **sealed-end conditions**.
- The **boundary conditions** strongly affect the terminal potential, highlighting the importance of nodal analysis.
- Consistent branching rules (e.g., diameter ratios) maintain continuous voltage and current flow.

---




