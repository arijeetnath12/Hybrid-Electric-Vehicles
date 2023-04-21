The objective of the this project is to develop a Simulink-based semi-detailed simulation of
a permanent-magnet AC motor drive that utilizes a sine-triangle modulator with third-harmonic
injection. This simulation will be used to show that it is possible to rapidly achieve the desired
(commanded) torque (within 10's of milliseconds), as long as the commanded torque is within limits.

The torque v/s time graph below highlights that the model successfully showed that it is possible to achieve the desired torque within 10's of milliseconds. 

![Torque v/s time graph]([Project 2/Te vs time.png](https://github.com/arijeetnath12/Hybrid-Electric-Vehicles/blob/5d19bb118e34d72deb759df353c4b228f7c55c83/Project%202/Te%20vs%20time.png) "Torque v/s time")

The high level Simulink architecture is given below:
<img src="Project 2/Simulink Model.png" width="300" height="200">

![Simulink architecture]([Project 2/Simulink Model.png](https://github.com/arijeetnath12/Hybrid-Electric-Vehicles/blob/d859d9e19e9fceb261220ea78ef614bfc4d3dcef/Project%202/Simulink%20Model.png) "Simulink architecture")
