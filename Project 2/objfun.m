function i_s = objfun(iqd) % i_s is output that depends on input variable iqd
%global param
% define function to minimize
i_s = sqrt(iqd(1)^2 + iqd(2)^2) ;
end