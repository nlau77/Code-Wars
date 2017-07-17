// Question
// in a given string reverse the order of each word

// Example
// reverseWords('fast purple cat') ->'tsaf elprup tac'


// solution
function reverseWords(str) {
// reverse each word within a string
   let reverseStrings = str.split(" ").map(word => {
      return word.split("").reverse().join("")
    })

//  join the array back together
  return reverseStrings.join(" ")
  }
