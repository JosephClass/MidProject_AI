function mutant = mutation(child,mutation_rate)
mutant = child

#disp("Mutation") (Personal Addition)
for i=1:length(mutant.gen)
  if rand <= mutation_rate
    mutant.gen(i) = char(randi([32,126]));
    #disp("Mutasi");
  endif
endfor
end