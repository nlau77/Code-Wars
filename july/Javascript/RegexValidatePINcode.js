// Instructions
// check to make sure that is pin fufill two conditioins
// 1. has only 4 or 6 digits
// 2. the pin only has digits

// Example
// validatePIN(12555) --> false
// validatePIN(12555a) --> false
// validatePIN(1255) --> true

// solution
function validatePIN (pin) {
  //check for a length of 4 or 6
  if(pin.length !== 4 && pin.length !== 6){
     return false
    }
  // check for digits only
  if(pin.match(/^\d+$/)){
    return true
  }else{
    return false
  }
}

// notes
// for javascript use .match to for regular expressions instead of includes
