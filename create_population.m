# This file is "function file", so we not start it with "1;"
# The name of file MUST SAME AS the function
function population = create_population(target_word,population_number)
  population = struct();
  for i = 1:population_number,
    gen_baru = gennew(length(target_word));
    population(i).gen = gen_baru;
    population(i).fitness = fitness_test(gen_baru, target_word);  
  endfor
endfunction