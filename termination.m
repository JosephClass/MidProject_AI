function [isLooping,solution] = termination(population)
  [the_best_solution,~] = selection(population);
  
  if the_best_solution.fitness  == 100
    isLooping = false;
    disp("Found The Answer")
  else
    isLooping = true;
  endif
  
  solution = the_best_solution;
end