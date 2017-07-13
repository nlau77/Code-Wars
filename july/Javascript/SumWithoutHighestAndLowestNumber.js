// Instructions
// Given an array of numbers, remove the smallest and largest value of the array
// and then find the sum of the remaining values

// Example
sumArray([1,5,4,2,3]) -> 2 + 3 + 4 -> returns 9

// my solution
function sumArray(array) {
  if(array === null){
    return 0
  }else if (array.length <= 2) {
    return 0
  }else {
    let total = 0
    array = array.sort(function(a,b) {return a - b})
    for(i=1; i < array.length -1; i++){
      total += array[i]
    }
    return total
 }
}

// alternative to the totaling
...

let total = 0
array = array.sort(function(a,b) {return a - b}).slice(1, -1)
for(i=0; i < array.length ; i++){
  total += array[i]
}
return total

...
