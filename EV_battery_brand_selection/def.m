function [def9s0] = def(IT2FN_i)
%输入一个IT2FN-i对其进行去模糊，并输出去模糊结果
temp =[IT2FN_i(1:2),IT2FN_i(4:5)];
def9s0=((sum(temp)+(3+IT2FN_i(6))*IT2FN_i(3))/(3+IT2FN_i(6)))*0.5;
end