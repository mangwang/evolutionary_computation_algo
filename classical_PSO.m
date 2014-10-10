%----------------------------------------------------------------------

%标准PSO算法
%种群规模NP=100
%加速因子都取2


%----------------------------------------------------------------------
clear;clc;

D = 30; % dimensionality of benchmark functions
NP = 100; % population size
runs = 20; % number of independent runs for each function, should be set to 25
Max_iter = 2000; % maximal number of FEs, should be set to 3e+06
global initial_flag; % the global flag used in test suite

for func_num =1:3
    
    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    for run = 1:runs
        
        initial_flag = 0; % should set the flag to 0 for each run, each function
        cc=[2 2];   %acceleration constants
        iwt=0.9;
        vel=lb+(ub-lb).*rand(NP,D);%initialize the velocity of the particles
        pop = lb + (ub-lb).*rand(NP, D);
        val = benchmark_func(pop, func_num,run); % fitness evaluation
        FEs = NP;
        
        pbest=pop;
        p_val=val;
        [g_val,index]=min(val);
        gbest=pop(index,:);
        iter=1;
        
        gval(iter)=g_val;
        
        save(['result\classical_PSO\',num2str(func_num),'_',num2str(run),'_',num2str(iter)],'pop','val') ;
        while (iter <= Max_iter-1)
            
            for i=1:NP
                
                aa=cc(1).*rand(1,D).*(pbest(i,:)-pop(i,:))+cc(2).*rand(1,D).*(gbest-pop(i,:));
                vel(i,:)=iwt.*vel(i,:)+aa;
                vel(i,:)=update(vel(i,:),lb,ub);
                
                pop(i,:)=pop(i,:)+vel(i,:);
                pop(i,:)=update(pop(i,:),lb,ub);
                
                val(i) = benchmark_func(pop(i,:), func_num,run); % fitness evaluation
                
                
                
                if  val(i)<p_val(i)
                    p_val(i)=val(i);
                    pbest(i,:)=pop(i,:);
                end
                
                if val(i)<g_val
                    g_val=val(i);
                    gbest=pop(i,:);
                end
                
                
            end
            
            iter=iter+1;
            iwt=0.9-iter*(0.5/Max_iter);
            gval(iter)=g_val;
            %------------------------保存每一代的种群和适应度---------------------------
            
            save(['result\classical_PSO\',num2str(func_num),'_',num2str(run),'_',num2str(iter)],'pop','val') ;
            
            % demo output, you should save your results to some files
%             fprintf(1, 'func_num = %d, run = %d,iter = %d\n', func_num, run,iter);
%             fprintf(1, 'min(val) = %g\n\n', g_val);
        end
        fprintf(1, 'fun_num = %d, run_num = %d\n', func_num, run);
    end
    
end
plot(gval);

