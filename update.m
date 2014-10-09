function p=update(p,low,up)
[popsize,dim]=size(p);
for i=1:popsize
    for j=1:dim
        % first (standard)-method
        if p(i,j)<low
            if rand<rand
                p(i,j)=rand*(up-low)+low;
            else
                p(i,j)=low;
            end
        end
        if p(i,j)>up
            if rand<rand             
                p(i,j)=rand*(up-low)+low; 
            else
                p(i,j)=up;
            end
        end
    end        
end
