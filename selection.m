function [parent1, parent2] = selection(population)

  
    fitness_data = zeros (1, length(population));
    for i=1:length(population)
        fitness_data(i) = population(i).fitness;
    end
    
    [~, index] = max(fitness_data);
    parent1 = population(index);
    
    population(index) = [];
    fitness_data(index) = [];
                     
    [~, index] = max (fitness_data);
    parent2 = population(index);
    best1 = parent1;
    best2 = parent2;
              
            
        
end