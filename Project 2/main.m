% Question 1

N= 100;

% use interior-point algorithm
T_e = linspace(-400,400,N);
options = optimoptions('fmincon','Algorithm','interior-point');

for i = 1:N
    param.Te = T_e(i);
    iqd = fmincon(@(iqd)objfun(iqd),[0;0],[],[],[],[],[],[],@(iqd)confuneq(iqd),options);
    i_qs(i) = iqd(1);
    i_ds(i) = iqd(2);
end
I_s = sqrt(i_qs.^2+i_ds.^2);
save i_qs i_qs;
save i_ds i_ds;
save T_e T_e;

% Plot
figure(1)
plot(T_e,i_qs,T_e,-i_ds,T_e,I_s,'LineWidth',1)
legend('I_{qs}','-I_{ds}' ,'I_s')
title('Optimal Currents vs Torque')
ylabel('Current (A)')
xlabel('Electric Torque (N.m)')

% Question 2

% define electrical rotor speed (w_rm = 500 rpm)
omega_e = 500 * 2*pi / 60 * param.P/2; % rad/s

% For T_e = 400
V_qs = param.r_s*i_qs(100) + omega_e*param.L_d*i_ds(100) + omega_e*param.lambda_m
V_ds = param.r_s*i_ds(100) - omega_e*param.L_q*i_qs(100)
P_elec = 1.5*(V_qs*i_qs(100) + V_ds*i_ds(100))
I_batt = P_elec/param.V_batt

% For T_e = -400
V_qs_neg = param.r_s*i_qs(1) + omega_e*param.L_d*i_ds(1) + omega_e*param.lambda_m
V_ds_neg = param.r_s*i_ds(1) - omega_e*param.L_q*i_qs(1)
P_elec_neg = 1.5*(V_qs_neg*i_qs(1) + V_ds_neg*i_ds(1))
I_batt_neg = P_elec_neg/param.V_batt




