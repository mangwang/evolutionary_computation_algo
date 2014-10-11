%画出三维的散点图

%--------------NSDE算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['result\NSDE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
		
		% Add savePath to save results
        savePath = 'result\pics\NSDE';
        if ~isdir(savePath)
			mkdir(savePath);
        end
        saveas(1,['result\pics\NSDE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘pics
    end
end


%--------------best_DE算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['result\best_DE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
		% Add savePath to save results
		savePath = 'result\pics\best_DE';
        if ~isdir(savePath)
			mkdir(savePath);
        end
        saveas(1,['result\pics\best_DE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘pics
    end
end

%--------------classical_DE算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['result\classical_DE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
		% Add savePath to save results
		savePath = 'result\pics\classical_DE';
        if ~isdir(savePath)
			mkdir(savePath);
        end
        saveas(1,['result\pics\classical_DE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘pics
    end
end


%--------------classical_PSO算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['result\classical_PSO\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
		% Add savePath to save results
		savePath = 'result\pics\classical_PSO';
        if ~isdir(savePath)
			mkdir(savePath);
        end
        saveas(1,['result\pics\classical_PSO\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘pics
    end
end


%--------------CLPSO算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['result\CLPSO\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
		% Add savePath to save results
		savePath = 'result\pics\CLPSO';
        if ~isdir(savePath)
			mkdir(savePath);
        end
        saveas(1,['result\pics\CLPSO\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘pics
    end
end
