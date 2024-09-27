% Ackley Function
function result = fit_fun(pop)
% P.S. When designing your own fitness function, remember that the function 
% should return only one value for each individual, regardless of the 
% dimension of the individuals in the population.
    % Initial values
    a = 20;
    b = 0.2;
    c = 2*pi;
    
    popsize = size(pop,1);
    d = size(pop,2);
    result = ones(popsize,1);
    sm1 = 0;
    sm2 = 0;
    for i = 1 : popsize
        for j = 1 : d
            sm1 = sm1 + pop(i,j).^2;
            sm2 = sm2 + cos(c*pop(i,j));
        end
        result(i) = -a*exp(-b*sqrt((1/d)*sm1)) - exp((1/d)*sm2) + a + exp(1);
    end
    
end