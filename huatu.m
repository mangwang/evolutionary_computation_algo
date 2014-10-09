%画出三维的散点图

%--------------NSDE算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
 if (func_num == 1 | func_num == 3 )
        lb = -100;
        ub = 100;
  end
    if (func_num == 2 )
        lb = -5;
        ub = 5;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['实验结果\NSDE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['实验结果\图结果\NSDE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘图结果
    end
end


%--------------best_DE算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
 if (func_num == 1 | func_num == 3 )
        lb = -100;
        ub = 100;
  end
    if (func_num == 2 )
        lb = -5;
        ub = 5;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['实验结果\best_DE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['实验结果\图结果\best_DE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘图结果
    end
end

%--------------classical_DE算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
 if (func_num == 1 | func_num == 3 )
        lb = -100;
        ub = 100;
  end
    if (func_num == 2 )
        lb = -5;
        ub = 5;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['实验结果\classical_DE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['实验结果\图结果\classical_DE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘图结果
    end
end


%--------------classical_PSO算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
 if (func_num == 1 | func_num == 3 )
        lb = -100;
        ub = 100;
  end
    if (func_num == 2 )
        lb = -5;
        ub = 5;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['实验结果\classical_PSO\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['实验结果\图结果\classical_PSO\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘图结果
    end
end


%--------------CLPSO算法的散点图---------------------------------------------
for func_num=1:3
    % set the lower and upper bound for each function
 if (func_num == 1 | func_num == 3 )
        lb = -100;
        ub = 100;
  end
    if (func_num == 2 )
        lb = -5;
        ub = 5;
    end
    
    for iter=[1 10 20 30 40 50 60 70 80 90 100 500 1000 1500 2000]
        load (['实验结果\CLPSO\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['实验结果\图结果\CLPSO\',num2str(func_num),'_',num2str(iter),'.jpg']);  %保存绘图结果
    end
end



