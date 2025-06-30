function [H_m] = CM_2Matrix(M_1,M_2,IT2FN_i)


%计算两个矩阵之间的交叉熵

Row = size(M_1,1);
H_Matrix = zeros(Row,Row);
for i = 1:Row
    for j =1:Row
        m_1 = M_1(i,j*7-6:j*7);
        m_2 = M_2(i,j*7-6:j*7);
        H_m_1_2 = cross_entropy(m_1,m_2,IT2FN_i); 
        H_Matrix(i,j) = H_m_1_2;
    end
end
H_m = sum(H_Matrix,"all")/(2*Row^2);
end