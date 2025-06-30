function [H] = cross_entropy(m_1,m_2,IT2FN_i)
%UNTITLED5 此处提供此函数的摘要
%   此处提供详细说明
epsilon = 1e-10;
%IT2FN_i = xlsread('IT2FN-i.xlsx');
a = size(IT2FN_i,1);
H=0;
%%

for i= 1:a
    AAA = abs(def(IT2FN_i(i,:))*m_1(i));
    BBB = abs(def(IT2FN_i(i,:))*m_2(i));
    CCC = BBB/max(AAA,epsilon);
    DDD = log(abs(CCC+epsilon));
    EEE = abs(AAA*DDD);
    H = H + EEE;
end




end


% m_1 = a;
% m_2 = b;
