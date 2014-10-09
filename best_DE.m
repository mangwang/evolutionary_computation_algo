%----------------------------------------------------------------------

%种群规模 NP=100
%变异概率 F=0.5
%交叉概率 CR=0.9
%变异策略 DE/best/1

%----------------------------------------------------------------------

clear;

D = 30; % dimensionality of benchmark functions
NP =100; % population size
runs = 20; % number of independent runs for each function, should be set to 25
Max_iter =2000; % maximal number of FEs, should be set to 3e+06
F=0.5;         %变异概率
CR=0.9;        %交叉概率
global initial_flag; % the global flag used in test suite

for func_num = 1:3

    % set the lower and upper bound for each function
    if (func_num == 1 || func_num == 3)
        lb = -100;
        ub = 100;
    end
    if (func_num == 2)
        lb = -100;
        ub = 100;
    end

   for run = 1:runs
       
      initial_flag = 0; % should set the flag to 0 for each run, each function
      pop = lb + (ub-lb)*rand(NP, D);
      val = benchmark_func(pop, func_num, run); % fitness evaluation

      iter=1;
      [gval(iter),index]=min(val);
      g_best=pop(index,:);
      save(['result\best_DE\',num2str(func_num),'_',num2str(run),'_',num2str(iter)],'pop','val') ;
      while (iter <= Max_iter-1)
         % random search, you should add your own method
         for i=1:NP
          %变异操作
        d=round(rand*(NP-1))+1;
        b=round(rand*(NP-1))+1;
        while  b==i|b==d
            b=round(rand*(NP-1))+1;
        end
        %c=round(rand*(NP-1))+1;
        %while c==i |c==d|c==b
          % c=round(rand*(NP-1))+1; 
        %end 
         v(i,:)=g_best+F.*(pop(b,:)-pop(d,:));
         v(i,:)=update(v(i,:),lb,ub);
         z=round(rand*(D-1))+1;
         
         %交叉操作
        for j=1:D
         if rand<=CR|j==z  
             newindiv(j)=v(i,j);
         else
             newindiv(j)=pop(i,j);
         end
        end
         
        %选择操作
         newval = benchmark_func(newindiv, func_num,run);         

         if newval<val(i)
              val(i)=newval;
              pop(i,:)= newindiv; 
         end
         
         end  
%---------------------------统计每一代的最优解--------------------------------

        iter=iter+1;
        [gval(iter),index]=min(val);
        g_best=pop(index,:);
        
 %------------------------保存每一代的种群和适应度---------------------------  
  
 save(['实验结果\best_DE\',num2str(func_num),'_',num2str(run),'_',num2str(iter)],'pop','val') ;
         
         % demo output, you should save your results to some files
         fprintf(1, 'func_num = %d, run = %d, iter = %d\n', func_num, run, iter);
         fprintf(1, 'gval(iter) = %g\n\n', gval(iter));
      end

  % Gvalue(func_num,run)=gval(iter);
  % semilogy(1:iter,gval);      %收敛曲线图
   end
end

