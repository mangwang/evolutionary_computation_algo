
function fit = benchmark_func(x, func_num,run)
global initial_flag jrandflag jrand lb ub
persistent fhd

if (initial_flag == 0)
    % Search Range
    if (func_num == 1 | func_num == 3 )
        lb = -100;
        ub = 100;
    end
    if (func_num == 2 )
        lb = -100;
        ub = 100;
    end
    
    

	if (func_num ==  1) fhd = str2func('sphere_shift_func');
      elseif (func_num ==  2) fhd = str2func('rastrigin_shift_func');
      elseif (func_num ==  3) fhd = str2func('rosenbrock_shift_func'); 
    end
    
	jrandflag = 0;
    
	if (jrandflag == 1)
		jrand = Randomizer(func_num);
	end
end

fit = feval(fhd, x,run);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sphere Function 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fit = sphere_func(x)

fit = sum(x.*x, 2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rosenbrock's Function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fit = rosenbrock_func(x)

[ps D] = size(x);
fit = sum(100.*(x(:,1:D-1).^2-x(:,2:D)).^2+(x(:,1:D-1)-1).^2,2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rastrigin's Function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fit = rastrigin_func(x)

fit = sum(x.*x-10*cos(2*pi*x)+10, 2);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% F1: Shifted Sphere Function
% D = 30
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fit = sphere_shift_func(x,run)
global initial_flag jrandflag jrand lb ub
persistent o

[ps D] = size(x);
if (initial_flag == 0)
    if (jrandflag == 1)
        o = jrand.createShiftVector(D, lb, ub);
        o = o';
		save (['datafiles\',num2str(1),'\f01_o.mat'],'o');
    else
		load  (['datafiles\',num2str(1),'\f01_o.mat']);
		o = o(1:D);
    end
	initial_flag = 1;
end

x = x-repmat(o,ps,1);
fit = sphere_func(x);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% F2: Shifted Rastrigin's Function
% D = 30
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fit = rastrigin_shift_func(x,run)
global initial_flag jrandflag jrand lb ub
persistent o

[ps D] = size(x);
if (initial_flag == 0)
    if (jrandflag == 1)
        o = jrand.createShiftVector(D, lb, ub);
        o = o';
		save (['datafiles\',num2str(1),'\f02_o.mat'],'o');
    else
		load (['datafiles\',num2str(1),'\f02_o.mat']);
		o = o(1:D);
    end
	initial_flag = 1;
end

x = x-repmat(o,ps,1);
fit = rastrigin_func(x);





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% F3: Shifted Rosenbrock's Function
% D = 30
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fit = rosenbrock_shift_func(x,run)
global initial_flag jrandflag jrand lb ub
persistent o

[ps D] = size(x);
if (initial_flag == 0)
    if (jrandflag == 1)
        o = jrand.createShiftVector(D, lb, ub-1);
        o = o';
		save (['datafiles\',num2str(1),'\f03_o.mat'],'o');
    else
		load (['datafiles\',num2str(1),'\f03_o.mat']);
        o = o(1:D);
    end
   
	initial_flag = 1;
end

x = x-repmat(o,ps,1);
fit = rosenbrock_func(x);

