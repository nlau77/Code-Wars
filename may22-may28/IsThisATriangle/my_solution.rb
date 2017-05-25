
def isTriangle(a,b,c)
   # largest side < sum of smaller sides

   triangle_sides = [a,b,c].sort

  if triangle_sides[2] < triangle_sides[1] + triangle_sides[0]
     true
   else
     false
   end
end
