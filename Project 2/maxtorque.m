function Torque = maxtorque(iqd)
global param

% define function to minimize
% maximizing torque equivalent to minimizing negative torque
Torque = -1.5*param.P/2*(iqd(1)*param.lambda_m + (param.L_d - param.L_q)*iqd(1)*iqd(2));
end