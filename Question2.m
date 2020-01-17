%% question 2
load pfInfo.mat 
T=table(pfInfo.firmList(:,1));
writetable(T,'companylist.csv','Delimiter',',');

A={10008, 10002,...
    10003, 10004,...
    10005, 10006,...
    10007, 10011,... 
    10013, 10014};
B={"Companylist_Financial.csv",...
"Companylist_Basic_Material.csv",...
"Companylist_Communications.csv",... 
"Companylist_Consumer_cyclical.csv",... 
"Companylist_noncyclical.csv",... 
"Companylist_Diversified.csv",... 
"Companylist_Energy.csv",... 
"Companylist_Industrial.csv",... 
"Companylist_Technology.csv",... 
"Companylist_Utilities.csv"};
for i = 1:length(A)
    result=pfInfo.firmList(pfInfo.firmList(:,7)==cell2mat(A(i)),:);
    T=table(result(:,1));
    writetable(T,string(B(i)),'Delimiter',',');
end




    


