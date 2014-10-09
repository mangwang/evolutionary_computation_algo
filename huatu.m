%������ά��ɢ��ͼ

%--------------NSDE�㷨��ɢ��ͼ---------------------------------------------
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
        load (['ʵ����\NSDE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['ʵ����\ͼ���\NSDE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %�����ͼ���
    end
end


%--------------best_DE�㷨��ɢ��ͼ---------------------------------------------
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
        load (['ʵ����\best_DE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['ʵ����\ͼ���\best_DE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %�����ͼ���
    end
end

%--------------classical_DE�㷨��ɢ��ͼ---------------------------------------------
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
        load (['ʵ����\classical_DE\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['ʵ����\ͼ���\classical_DE\',num2str(func_num),'_',num2str(iter),'.jpg']);  %�����ͼ���
    end
end


%--------------classical_PSO�㷨��ɢ��ͼ---------------------------------------------
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
        load (['ʵ����\classical_PSO\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['ʵ����\ͼ���\classical_PSO\',num2str(func_num),'_',num2str(iter),'.jpg']);  %�����ͼ���
    end
end


%--------------CLPSO�㷨��ɢ��ͼ---------------------------------------------
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
        load (['ʵ����\CLPSO\',num2str(func_num),'_1','_',num2str(iter)]) ;
        new_pop=pop(:,[10 20 30]);
        scatter3(new_pop(:,1),new_pop(:,2),new_pop(:,3))
        xlim([lb ub]);
        ylim([lb ub]);
        zlim([lb ub]);
        saveas(1,['ʵ����\ͼ���\CLPSO\',num2str(func_num),'_',num2str(iter),'.jpg']);  %�����ͼ���
    end
end



