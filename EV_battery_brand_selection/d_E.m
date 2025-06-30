function [DE_h_k,D_k] = d_E(M_k,M_c,IT2FN_i)
%两个偏好关系之间的距离矩阵
%IT2FN_i = xlsread('IT2FN-i.xlsx');
a = size(IT2FN_i,1);
def9s0=[];
for i =1:a
    def9s_i0 = def(IT2FN_i(i,:));
    def9s0=[def9s0,def9s_i0];
end
%% 上面是一次性对语言变量去模糊化，下面进入真正的求距离阶段。
b = size(M_k,1);
%E9M_k0 = zeros(b,b);
%E9M_c0 = zeros(b,b);
DE_h_k= zeros(b,b);
for i = 1:b
    for j = 1:b
    %E9M_k0(i,j) = def9s0*M_k(i,5*j-4:5*j)';
    E9M_k0 = def9s0*M_k(i,7*j-6:7*j)';
    %E9M_c0(i,j) = def9s0*M_c(i,5*j-4:5*j)';
    E9M_c0 = def9s0*M_c(i,7*j-6:7*j)';
    DE_h_k(i,j) = abs(E9M_k0-E9M_c0);
    end
end
D_k = sum(DE_h_k,'all');
end