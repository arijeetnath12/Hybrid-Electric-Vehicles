The goal of this project is to evaluate the performance of a hybrid gas/electric vehicle with parallel configuration. The electric machine in the vehicle serves as the primary means of propulsion at low speeds, while the main speed is disengaged. Furthermore, it functions as a booster motor, enhancing acceleration at high speeds. The engine is designed to operate along the optimal BSFC curve, and a simplified energy storage subsystem model is utilized to achieve this. The energy storage subsystem has adequate capacity, ensuring that the state of charge (SOC) stays within the range of 0.2 to 0.8, with the aim of maintaining a target SOC of 0.5. A Simulink model is developed to analyze the architecture for three drive schedules published by US EPA. These drive schedules, which are taken as input by the Simulink model are UDDS(city), HWFET(highway) and US06 (aggressive highway). For each drive cycle, the total tractive energy, energy supplied by the engine, energy supplied by the ESS, energy lost to aerodynamic drag, the energy lost to ESS, the energy lost to rolling resistance are calculated. At the end of each drive cycle, the total fuel used, the miles travelled, average miles per gallon and the SOC are calculated.  In addition, certain variables are plotted to analyze the performance of the vehicle

The init.m files contains all the variables and constants that are needed to be initialized before the simulink model is run. The simulink model is named project12020a.slx. The engine map is contained in a .mat file called engine_map.mat. The three drive cycles that are analysed in this simulation are udds.mat, us06.mat, hwfet.mat

The results and discussion are included in the comprehensive report titled Project 1 Arijeet.pdf. 

<p align="center">
  <img src="https://github.com/arijeetnath12/Hybrid-Electric-Vehicles/blob/b56ee1f9c666b8e3d08bf6ffbe9c4626c72b2275/Project%201/Simulink%20Model.jpg" alt="Image" width="2000" />
  <br>
  <em>Simulink Block</em>
</p>

