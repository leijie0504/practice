load dtd_mle_2000.mat
firmDtd(:,3)= fillmissing(firmDtd(:,3),'previous');  %fill out NaN value
t=firmDtd(:,2);
t = datetime(t,'ConvertFrom','yyyymmdd','format','yyyy-MM-dd'); 
endRows = find(ismember(t,unique(dateshift(t,'end','month'))));    %find the last day of each month
startRows=find(ismember(t,unique(dateshift(t,'start','month'))));
firmDtd(endRows(1),3)=firmDtd(endRows(1)+1,3) .     %fill out NaN value
firmDtd=table(firmDtd);
result=firmDtd(endRows,:);        %extract month-end data
save('dtd_mle_2000_monthly.mat','result');
