// Instructions
// Given the first 3 digits, find the tribonnaci sequence to the nth value

// Example
// tribonacci([0,1,1], 5) -->

// Solution

function tribonacci(signature,n){
  if(n === 0 ){
    return []
  }else{
    while(signature.length < n){
      let sigLength = signature.length
      let nextTribonnaci = signature[sigLength - 1] + signature[sigLength - 2] + signature[sigLength -3]
      signature.push(nextTribonnaci)
    }
    return signature.slice(0,n)
  }
}


// otheres interesting solution
function tribonacci(signature,n){
  for (var i = 0; i < n-3; i++) { // iterate n times
    signature.push(signature[i] + signature[i+1] + signature[i+2]); // add last 3 array items and push to trib
  }
  return signature.slice(0, n); //return trib - length of n
}
