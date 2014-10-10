
%----------------------------------------------------------------------

%带综合学习的PSO算法
%种群规模NP=100
%标准PSO加速因子都取2，综合学习PSO的c=1.49


%----------------------------------------------------------------------
clear;

D = 30; % dimensionality of benchmark functions
NP = 100; % population size
runs = 20; % number of independent runs for each function, should be set to 25
Max_iter = 2000; % maximal number of FEs, should be set to 3e+06
global initial_flag; % the global flag used in test suite

for func_num =2:3%:20
    
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
        c=1.49;
        
        iwt=0.9;
        vel=lb+(ub-lb).*rand(NP,D);%initialize the velocity of the particles
        pop = lb + (ub-lb).*rand(NP, D);
        val = benchmark_func(pop, func_num,run); % fitness evaluation
        
        
        pbest=pop;
        p_val=val;
        [g_val,index]=min(val);
        gbest=pop(index,:);
        
        iter=1;
        flag=zeros(NP,1);
        M=5;
        
        pc=0.05+0.45*(exp(10*((1:NP)-1)/(NP-1))-1)/(exp(10)-1);  % 计算学习概率
        
        save(['result\CLPSO\',num2str(func_num),'_',num2str(run),'_',num2str(iter)],'pop','val') ;
        
        while (iter <= Max_iter-1)
            
            for i=1:NP
                
                if flag(i)>M
                    
                    %--------------------标准PSO算法------------------------------
                    
                    aa=cc(1).*rand(1,D).*(pbest(i,:)-pop(i,:))+cc(2).*rand(1,D).*(gbest-pop(i,:));
                    
                    vel(i,:)=vel(i,:)+aa;
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
                    
                    flag(i)=0;
                    
                end
                %--------------------综合学习PSO算法------------------------------
                for j=1:D
                    
                    if rand<pc(i)
                        
                        fi1=ceil(NP*rand);
                        fi2=ceil(NP*rand);
                        fi=(p_val(fi1)<p_val(fi2))'.*fi1+(p_val(fi1)>=p_val(fi2))'.*fi2;
                        
                        aa(j)=c.*rand.*(pbest(fi,j)-pop(i,j));
                        
                    else
                        
                        aa(j)=c.*rand.*(pbest(i,j)-pop(i,j));
                        
                    end
                    
                end
                
                
                vel(i,:)=iwt.*vel(i,:)+aa;
                vel(i,:)=update(vel(i,:),lb,ub);
                
                pop(i,:)=pop(i,:)+vel(i,:);
                pop(i,:)=update(pop(i,:),lb,ub);
                
                val(i) = benchmark_func(pop(i,:), func_num,run); % fitness evaluation
                
                
                
                if  val(i)<p_val(i)
                    
                    p_val(i)=val(i);
                    pbest(i,:)=pop(i,:);
                    flag(i)=0;
                    
                else
                    flag(i)=flag(i)+1;
                end
                
                if val(i)<g_val
                    g_val=val(i);
                    gbest=pop(i,:);
                end
            end
            
            iter=iter+1;
            iwt=0.9-iter*(0.5/Max_iter);
            
            %------------------------保存每一代的种群和适应度---------------------------
            
            save(['result\CLPSO\',num2str(func_num),'_',num2str(run),'_',num2str(iter)],'pop','val') ;
            
            % demo output, you should save your results to some files
%             fprintf(1, 'func_num = %d, run = %d, iter = %d\n', func_num, run, iter);
%             fprintf(1, 'min(val) = %g\n\n', g_val);
        end
        fprintf(1, 'run_num = %d\n', run);
        
    end
    
end

