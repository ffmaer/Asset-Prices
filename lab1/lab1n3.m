format compact
clc
% data = data(:,2:5);
diffdata = log(data(13:end,:)) - log(data(1:end-12,:));

% for col=1:4
%     cur_col = diffdata(:,col);
%     std(cur_col)
%     skewness(cur_col)
%     kurtosis(cur_col)
%     disp('-----');
% end

corrcoef(diffdata)
employ = diffdata(:,2);
corrcoef(diffdata(:,1),employ)
corrcoef(diffdata(:,3),employ)
corrcoef(diffdata(:,4),employ)