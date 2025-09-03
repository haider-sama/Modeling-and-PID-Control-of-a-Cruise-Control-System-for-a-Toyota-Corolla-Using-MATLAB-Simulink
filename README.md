# 🚗 Cruise Control System (Toyota Corolla 1.8L) – MATLAB & Simulink

## 📖 Introduction
This project demonstrates the **modeling, simulation, and PID control implementation** of a **cruise control system** for a **Toyota Corolla 1.8L** using **MATLAB & Simulink**.  

Cruise control systems are widely used in modern vehicles to maintain a **constant speed** without continuous throttle input.  
In this project, the vehicle’s **longitudinal dynamics** are modeled as a simplified **mass-damper system**, and a **PID controller** is designed for speed regulation.  

The objective was to maintain a target cruising speed of **100 km/h (27.78 m/s)** while analyzing system performance under disturbances, such as road inclines. Both **continuous-time (s-domain)** and **discrete-time (z-domain)** models were implemented.  

---

## 🔬 Methodology
### 1. **System Modeling**
- Developed a **first-order mass-damper model** for the Toyota Corolla 1.8L.  
- Incorporated key parameters: **vehicle mass, drag coefficient, rolling resistance, and engine torque**.  
- Simulated system dynamics in both **s-domain (Laplace)** and **z-domain (discrete-time)** using MATLAB Simulink.  

### 2. **Controller Design**
- Implemented a **PID controller** using MATLAB’s **PID Tuner tool**.  
- Control objectives:  
  - **Rise time < 12 seconds**  
  - **Overshoot < 10%**  
  - **Steady-state error < 2%**  

### 3. **Simulation**
- Conducted simulations for both **continuous** and **discrete-time PID models**.  
- Introduced a **disturbance input** (road incline) to test robustness.  
- Achieved stable cruise velocity around **28.16 m/s (~101 km/h)**.  

---

## 🗂️ Project Structure
<br />
├──📄 cruise_closed_loop_discrete.slx          # Simulink models (s-domain & z-domain)  
<br />
├──📄 cruise_speed_control_analysis.m          # MATLAB scripts  
<br />
├──📄 CruiseControl.pdf   # Full project documentation  

---

📌 Key Insights  
<br />
- Demonstrates how **classical control theory** applies to **real-world automotive systems**.  
- Highlights the difference between **continuous-time** and **discrete-time** control.  
- Provides a strong foundation for **vehicle dynamics and control engineering** applications.  
