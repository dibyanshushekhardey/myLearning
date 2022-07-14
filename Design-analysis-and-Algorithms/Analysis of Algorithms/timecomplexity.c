//O(1)
// c is a constant
for(i = 0; i <= c; i++)
  //some O(1) expressions
}

//O(n) - time complexity of a loop is O(n) if the loop variable is incremented/ decremented by a constant amount
// here c is a positive integer constant
for(int i = 1; i <= n; i+=c)
{
  // some O(1) expressions
}

// decrement
for(i = 0; i <= n; i-=c)
{
  // some O(1) expressions
}

// O(n^c) time complexity od nested loops is equal to the number of times the innermost statement is executed

for(int i = 1; i <= n; i+=c)
{
  for(int j = 1; j <= n; j+= c)
    // some O(1) expressions
}
// examples include selection sort and insertion sort

// O(log(n)) - time complexity of a loop is considered as O(lofn) if the loop variables is divided/ multiplied by a constant amount
for(int i = 1; i <= n; i *= )
{
  // some O(1) expressions
}
for(int i = n; i > 0; i /= c)
{
  // some O(1) expressions
}

// examples include bineary serach(refer iterative impletation)

// O(log(log(n))) - time omplexity of a loop is considered as O(log(log(n))) if the variables is reduces / increased exponentially by a constant amount
// here c is a constant greater than 1
for(int i = 2; i <= n; i = pow(i, c))
{
  // some O(1) expressions
}
// here fun is sqrt or cuberoot or any other constant root
for(int i = n; i > 1; i = fun(i))
{
  // some O(1) expressions
}

//How to combine time complexities of consecutive loops?
//When there are consecutive loops, we calculate time complexity as sum of time complexities of individual loops.

for (int i = 1; i <=m; i += c) {
  // some O(1) expressions
}
for(int i = 1; i <=n; i += c) {
  // some O(1) expressions
}

//Time complexity of above code is O(m) + O(n) which is O(m+n)
//If m == n, the time complexity becomes O(2n) which is O(n).

