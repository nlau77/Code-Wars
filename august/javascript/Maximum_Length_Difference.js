// Instructions
Given two arrays with random strings find the maximum length
between a string from array1 and array2

// Example
a1 = ["cow", "blue", "orange"]
a2= ["pineapple", "donut"]
max_length_difference(a1, a2) => 5
// pineapple.length - cow.length = 5

// solution

// function to find max length of strings in an array
function findMax(string_array) {
  let max_value = ''
  string_array.forEach(element => {
    if(element.length > max_value.length){
     max_value = element
    }
  })
  return max_value.length
}

// function to find min legnth of strings in an array
function findMin(string_array){
  let min_value = ''
  string_array.forEach(element => {
    if (min_value === ''){
      min_value = element
    } else if (element.length < min_value.length){
      min_value = element
    }
  })
  return min_value.length
}

// putting it all together
function max_length_difference(a1, a2) {
  if(a1.length === 0 || a2.length === 0){
    return -1
  } else {
    let max_a1 = findMax(a1)
    let min_a1 = findMin(a1)
    let max_a2 = findMax(a2)
    let min_a2 = findMin(a2)

    let max1= max_a1 - min_a2
    let max2= max_a2 - min_a1

    if(max1 > max2){
      return max1
    } else {
      return max2
    }
  }
}
