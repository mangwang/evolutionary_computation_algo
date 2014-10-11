% 生成随机数

clear;clc;

savePath = 'datafiles';
if ~isdir(savePath)
	mkdir(savePath);
end

for i=1:20
    
    o = rand(1,1000).*200 - 100;
    save(['datafiles\', num2str(i),'\f01_o.mat'], 'o');
    o = rand(1,1000).*10 - 5;
    save(['datafiles\', num2str(i),'\f02_o.mat'],'o');
    o = rand(1,1000).*200 - 100;
    save(['datafiles\', num2str(i),'\f03_o.mat'], 'o');
    
end