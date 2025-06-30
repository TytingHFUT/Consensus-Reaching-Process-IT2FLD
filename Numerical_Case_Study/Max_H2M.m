function [MaxH] = Max_H2M(M_1,M_2,M_3,M_4,omega)
%求出两个偏好关系之间交叉熵的最大值
M_c = DAWA_omega(M_1,M_2,M_3,M_4,omega);
a = CM_2Matrix(M_1,M_c);
b = CM_2Matrix(M_2,M_c);
c = CM_2Matrix(M_3,M_c);
d = CM_2Matrix(M_4,M_c);
e = [a b c d];
MaxH = max(e);

end