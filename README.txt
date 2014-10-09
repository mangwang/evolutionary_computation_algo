best_DE: 采用的变异策略为DE/best/1，收敛的速度比较快。

classical_DE :经典DE程序，采用的变异策略为DE/rand/1

NSDE:用高斯随机数和柯西随机数代替固定搜索步长的DE算法

classical_PSO :标准PSO算法

CLPSO:综合学习PSO算法，比较适合于求解多峰问题

update ：边界更新函数

实验结果保存的形式：num1_num2_num3.mat

其中：num1：测试函数的编号
      num2：运行次数的编号
      num3：迭代次数的编号

注意：NSDE算法需要将cauchy文件夹加入Matlab路径中。
