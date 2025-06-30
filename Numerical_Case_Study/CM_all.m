function [CM_all_Result] = CM_all(M_1,M_2,M_3,M_4,omega,IT2FN_i)

%所有偏好关系集合的共识度计算。

column = size(omega,2);
CM_results = zeros(column);
matrices = {M_1, M_2, M_3, M_4};
 for i = 1:column
     for j = 1:column
        p = matrices{i};
        q = matrices{j};
        temp = CM_2Matrix(p,q,IT2FN_i);
        CM_results(i,j) = temp;
     end
 end
CM_all_Result = sum(CM_results,"all")/(column^2);

end