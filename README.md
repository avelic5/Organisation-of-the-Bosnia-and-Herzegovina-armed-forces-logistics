# Logistics Organization of the Armed Forces of Bosnia and Herzegovina

## Overview
This project models the logistics system of the Armed Forces of Bosnia and Herzegovina using **PDDL (Planning Domain Definition Language)**. The objective is to optimize the distribution of military equipment to various brigades by modeling logistics challenges and proposing an efficient supply chain solution.

## Project Structure
The repository contains the following key files:

- **`domain.pddl`** – Defines the domain, including object types, predicates, and actions required for logistics operations.
- **`problem.pddl`** – Specifies a logistics scenario, defining objects, initial conditions, and goal conditions for the planner.
- **`Organizacija logistike oruzanih snaga BiH.pdf`** – A detailed report explaining the logistics model, challenges, and proposed solutions.

## Problem Description
The logistics system of the Armed Forces of Bosnia and Herzegovina faces several challenges, including:

- **Geographical Difficulties** – The diverse terrain complicates transportation and distribution of military supplies.
- **Infrastructure Issues** – Poor road and rail infrastructure hinders logistics operations.
- **Limited Technological Equipment** – Outdated tracking and management systems reduce efficiency.
- **Resource Constraints** – Budget limitations restrict the acquisition of necessary supplies.

## Proposed Solution
To address these issues, we developed a three-stage logistics model in PDDL:

1. **Basic Model** – Simulates a simple scenario with one brigade, one factory, one warehouse, and one truck.
2. **Expanded Model** – Introduces additional factories, brigades, trucks, and warehouses.
3. **Final Model** – Implements a full logistics system, including supply chain optimizations and imported equipment.

## Running the PDDL Model
To test and simulate the logistics planning problem, follow these steps:

1. Use a **PDDL planner** such as **Fast Downward**, **LPG-td**, or **FF Planner**.
2. Run the planner with:
   ```sh
   planner domain.pddl problem.pddl
   ```
3. Analyze the generated plan to understand the optimal sequence of actions for logistics management.

## Authors & Contributions
This project was developed by:


- **Aldin Velić**
- **Vedad Gaštan**
- **Irhad Žiga**
- **Kerim Hajdar**

Supervised by:
- **Doc. Dr. Senka Krivić**
- **Doc. Dr. Kenan Šehić**

## Future Work
- Incorporating **fuel constraints and resupply logistics** into the model.
- Improving the **realism of the model** by integrating more detailed data.
- Exploring **alternative optimization techniques** for logistics efficiency.

---
📌 *For more details, refer to the report (`Organizacija logistike oruzanih snaga BiH.pdf`).*

