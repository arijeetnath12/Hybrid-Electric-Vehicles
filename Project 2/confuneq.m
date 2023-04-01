function [c,ceq] = confuneq(iqd) % c and ceq are output variables that depend on input variable iqd
global param
% define constraints
% no nonlinear inequality constraints
c = [];


% Nonlinear equality constraint defined by ceq

% it is defined as ceq(1) because the constraint
% equation is assigned to the first element of ceq
% in case multiple constraints are to be defined,
% they can be assigned as ceq(2), ceq(3), etc
ceq(1) = param.Te - 1.5*(param.P/2)*(param.lambda_m*iqd(1)+(param.L_d-param.L_q)*iqd(1)*iqd(2));
end