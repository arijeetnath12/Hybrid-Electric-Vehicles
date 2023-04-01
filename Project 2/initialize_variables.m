global param

% source and filter parameters
param.V_batt = 400; % battery voltage in Volt (V)
param.C = 2e-3; % capacitance in Farad (F)
param.L = 20e-6; % inductance in Henry (H)
param.R = 0.01; % resistance in Ohm

% motor parameters
param.L_d = 2e-3; % d-axis inductance in Henry (H)
param.L_q = 3.3e-3; % q-axis inductance in Henry (H)
param.r_s = 0.02; % stator resistance in ohm
param.lambda_m = 0.2; % flux constant V-s/rad
param.P = 8; % number of poles

% Bonus question
param.Is_max = 225; % maximum current to be passed in Ampere (A)
param.Vs_max = sqrt(3)*param.V_batt/3;

% Current Control gains
K_q = 2; % in ohms
K_d = 2; % in ohms



% load lookup table data
load I_qs
load I_ds
load T_e
