# This file is "function file", so we not start it with "1;"
# The name of file MUST SAME AS the function
function fitness = fitness_test(gen,target)
  fitness = (sum(strcmp(gen ,target) == 1)/length(target))*100;
endfunction 