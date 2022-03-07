function new_population= regeneration(children,population)
  fitness = zeros(1,length(population));

  for i=1:length(fitness)
    fitness(i) = population(i).fitness;
  endfor
  population.gen

  for i=1:length(children)
    [~,index] = min(fitness);
    population(index) = [];
    fitness(index) = [];
  endfor

  for i=1:length(children)
    n = length(population) + 1;
    population(n) = children(i);
  endfor 
  new_population = population;
end