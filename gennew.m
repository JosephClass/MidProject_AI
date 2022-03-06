# This file is "function file", so we not start it with "1;"
# The name of file MUST SAME AS the function
function gen = gennew(x)
  random_num = randi([32,126],1,x);
  gen = char(random_num);
endfunction
