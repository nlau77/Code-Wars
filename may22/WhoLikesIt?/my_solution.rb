def likes(names)
  #no one likes this
  if names.size == 0
    "no one likes this"

  # one name
  elsif names.size == 1
    "#{names[0]} likes this"

  # two names
  elsif names.size == 2
    "#{names[0]} and #{names[1]} like this"

  # three names
  elsif names.size == 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"

  # four names +
  else
    "#{names[0]}, #{names[1]} and #{names.size-2} others like this"
  end
end
