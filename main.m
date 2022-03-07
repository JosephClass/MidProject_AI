# Every file of Octave source code must start with "1;"
# Because, if not, Octave will read it as "the function file" not a "script file"

# What is the different?
# Function file is the file that just contain one function and can be called with other file
# as the global function. NOTE that function file just can contain ONE FUNCTION.
# AND also we can't make a local variable and call it in one file.

# Script file is the file like we write in other programming language
# the script file allow us to write more than one functions and also
# we can make it local variable and call in in the same file.

# For other information, please click here:
# https://octave.org/doc/v4.4.1/Introduction-to-Function-and-Script-Files.html

# This main.m file is "Script File"
1;

# clear and clc is to clear the command window
clear
clc

# target_word will be the input from user as the word that Genetic Algorithm will
# work to match it as fit as the algortihm can.
target_word = "Pres"

# disp() function is like print() in python
disp (" ")

# How much population (randomize gen) will produce
population_number = 10;
mutation_rate = 0.5;

# Function create_population is located in create_population.m file.
population = create_population(target_word,population_number);
isLooping = true;
# Function to print all generated population with its fitness
# (This function is not from the tutorial)
#for i=1:population_number,
#gen = population(i).gen
#fit = population(i).fitness
#disp (" ")
#endfor
while isLooping
  #Best Individual
  [parent1, parent2] = selection(population);

  #Crossover
  [child1,child2] = crossover(parent1,parent2);

  #Mutation
  mutant1 = mutation(child1,mutation_rate);
  mutant2 = mutation(child2,mutation_rate);

  mutant1.fitness = fitness_test(mutant1.gen,target_word);
  mutant2.fitness = fitness_test(mutant2.gen,target_word);

  children = [mutant1,mutant2];
  population = regeneration(children,population)
  
  [isLooping,solution] = termination(population)
  clc
endwhile

