// Question
  // A user is walking in a perfect city.  The user can either walk n,e,s,w.
  // Walking in each direction takes 1 minute.  The user has to walk 10 minutes
  // and return tot eh same starting area.
  
// Example
isValidWalk(['n','s','n','s','n','s','n','s','n','s']) -> true
isValidWalk(['n','s','w','s','n','w','n','s','w','s']) -> false
isValidWalk(['n','s','n','s']) -> false

// Solution
function isValidWalk(walk) {
 if (walk.length === 10){
   let net_distance = 0
   walk.forEach(direction => {
     if (direction === 'n' || direction === 'e'){
       net_distance ++
      } else {
       net_distance --
      }
   })
   if (net_distance === 0){
     return true
   } else {
     return false
   }
 } else {
   return false
 }

}
