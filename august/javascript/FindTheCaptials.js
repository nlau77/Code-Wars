// question
Find the index for each captial letter in a string

// example
capitals("aPPle") -> [1, 2]
capitals("WaterMeloN") -> [0, 5, 9]

// solution
var capitals = function (word) {
  let capital_indexes = []
  word.split("").forEach((letter, index) =>{
    if (letter === letter.toUpperCase()){
      capital_indexes.push(index)
    }
  })
  return capital_indexes
}
