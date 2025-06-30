function [M_c] = DAWA_omega(M_1,M_2,M_3,M_4,M_5,M_6,omega)
%加权聚合
M_c = M_1.*omega(1)+M_2.*omega(2)+M_3.*omega(3)+M_4.*omega(4)...
    +M_5.*omega(5)+M_6.*omega(6);
end