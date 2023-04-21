The objective of the this project is to develop a Simulink-based semi-detailed simulation of
a permanent-magnet AC motor drive that utilizes a sine-triangle modulator with third-harmonic
injection. This simulation will be used to show that it is possible to rapidly achieve the desired
(commanded) torque (within 10's of milliseconds), as long as the commanded torque is within limits.

The torque v/s time graph below highlights that the model successfully showed that it is possible to achieve the desired torque within 10's of milliseconds. 

![Torque v/s time graph](Project 2/Te vs time.png "Torque v/s time")

The high level Simulink architecture is given below:
<img src="Project 2/Simulink Model.png" width="300" height="200">
![Simulink architecture](Project 2/Simulink Model.png "Simulink architecture")
