load firmSpecific.mat
load firmList.mat                            %find all finanial firm codes
financial_industry=firmList(firmList(:,2)==10008,:);
financial_industry=financial_industry(:,1);    

financial=[];    %obtain DTD values by grouping by nonfinancial and financial
nonfinancial=[];
for i=1:35
    if ismember(firmSpecific(365,1,i),financial_industry)
        financial=[financial,firmSpecific(:,6,i)];
    else
        nonfinancial=[nonfinancial,firmSpecific(:,6,i)];
    end
end                 

DTD_median_Fin=median(financial(:)); 
DTD_median_nonFin=median(nonfinancial(:));   %obtain median values

varCol.DTD_median_Fin=DTD_median_Fin;        %add two variables
varCol.DTD_median_nonFin=DTD_median_nonFin;