function [c,ceq] = myconstraint(iqd)
global param

% define constraints
v_q = param.r_s*iqd(1) + param.w_r*(param.lambda_m + param.L_d*iqd(2));
v_d = param.r_s*iqd(2) - param.w_r*param.L_q*iqd(1);

c(1) = sqrt(iqd(1)^2 + iqd(2)^2) - param.Is_max;
c(2) = sqrt(v_q^2 + v_d^2) - param.Vs_max;

ceq = []; % no equality constraints

end
