function [child1, child2] = crossover(parent1, parent2)
   childl = parent1;
   child2 = parent2;
    % crossover point
   CP = round(length(parent1.gen)/2);
   child1.gen(1:CP) = parent2.gen(1:CP);
   child2.gen(1:CP) = parent1.gen(1:CP);
end