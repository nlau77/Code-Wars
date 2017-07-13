// Instructions
1
3     5
7     9    11
13    15    17    19
21    23    25    27    29 ...
// With the given triangle, find the sum of all the numbers in a row given the index
// with index 1 starting as teh beginning

// Example
// rowSumOddNumbers(3) = 7 + 9 + 11 -> 27

// my solution
function rowSumOddNumbers(n) {
  starting_number = n * (n - 1) + 1 //find the starting number of a given row
  let total= 0

  for(let i = 0; i < n; i++){
    total += starting_number + (i*2)
  }
  return total
}


// alternate solution
function rowSumOddNumbers(n){
  return Math.pow(n, 3)
}
