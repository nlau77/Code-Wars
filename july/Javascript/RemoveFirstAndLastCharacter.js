// Instructions remove first and last characters of a string

// example
// "apple" -> "ppl"

// my solution
function removeChar(str){
  let split_str = str.split("")
  split_str.splice(str.length-1, 1)
  split_str.splice(0, 1)
  return split_str.join("")

};

// others solution
// return str.slice(1, -1)   notice slice not sPlice

//  return str.substring(1, str.length-2)
