% use interior point algorithm
N = 100;
omega_r = linspace(0,2000,N);
options = optimoptions('fmincon', 'Algorithm','interior-point');

for i = 1:N
    param.w_r = omega_r(i);
    iqd_forMaxT = fmincon(@(iqd_forMaxT)maxtorque(iqd_forMaxT),...
    [0;0],[],[],[],[],[],[],...
    @(iqd_forMaxT)myconstraint(iqd_forMaxT),options);
    Iqd_forMaxT(i,:) = iqd_forMaxT;
    Te_max(i,:) = -maxtorque(Iqd_forMaxT(i,:));

end

% Current calculation for maximum torque
Iq_forMaxT = Iqd_forMaxT(:,1);
Id_forMaxT = Iqd_forMaxT(:,2);
Is_forMaxT = sqrt(Iq_forMaxT.^2+Id_forMaxT.^2);

% Voltage calculation for maximum torque
Vq_forMaxT = param.r_s*Iq_forMaxT + param.w_r*(param.lambda_m + param.L_d*Id_forMaxT);
Vd_forMaxT = param.r_s*Id_forMaxT - param.w_r*param.L_q*Iq_forMaxT;
Vs_forMaxT = sqrt(Vq_forMaxT.^2+Vd_forMaxT.^2);

% Power calculation for maximum torque
P_forMaxT = (1.5*(Vq_forMaxT.*Iq_forMaxT + Vd_forMaxT.*Id_forMaxT))*0.001;

% plot torque vs mechanical speed 
figure(1)
plot(omega_r,Te_max,LineWidth=1)
legend('Te,max')
title('Maximum Torque versus Mechanical speed')
ylabel('Maximum Torque in N-m')
xlabel('Mechanical Speed in rad/s')

% plot currents vs mechanical speed 
figure(2)
plot(omega_r,Is_forMaxT,omega_r,Iq_forMaxT,omega_r,-Id_forMaxT,LineWidth=1)
legend('Is','Iq','-Id')
title('Currents needed for Maximum Torque versus Mechanical speed')
xlabel('Mechanical Speed in rad/s')
ylabel('Currents in Amperes')

% plot voltage vs mechanical speed 
figure(3)
plot(omega_r,Vs_forMaxT,LineWidth=1)
legend('Vs')
title('Voltage needed for Maximum Torque versus Mechanical speed')
xlabel('Mechanical Speed in rad/s')
ylabel('Voltage in Volts')

% plot power vs mechanical speed 
figure(4)
plot(omega_r,P_forMaxT,LineWidth=1)
legend('Pelec')
title('Power needed for Maximum Torque versus Mechanical speed')
xlabel('Mechanical Speed in rad/s')
ylabel('Power in kW')