
# my solution
def score( dice )

points = 0
# when there is less then three 5's or 1's
if dice.count(5) <=2 && dice.count(1) <=2
  if dice.count(2) >= 3
    points += 200
  elsif dice.count(3) >= 3
    points += 300
  elsif dice.count(4) >= 3
    points += 400
  elsif dice.count(6) >= 3
    points += 600
  end
  points += dice.count(1) * 100 + dice.count(5) * 50
# when there is 3 or more 1s
elsif dice.count(1) >= 3
  if dice.count(1) == 3
    points = 1000 + dice.count(5) * 50
  elsif dice.count(1) == 4
    points = 1100 + dice.count(5) * 50
  elsif dice.count(1) == 5
    points = 1200
  end
# last scenario three or more 5's
else
  if dice.count(5) == 3
    points = 500 + dice.count(1) * 100
  elsif dice.count(1) == 4
    points = 500 + dice.count(1) * 100
  elsif dice.count(1) == 5
    points = 600
  end
end

points
end

# other user's interesting solutions
def score( dice )
  score = 0
  (1..6).each do |i|
    counter = dice.select { |n| n == i }
    score =+ (i == 1 ? 1000 : i * 100) if counter.size >= 3
    score += (counter.size % 3) * 100 if i == 1
    score += (counter.size % 3) * 50 if i == 5
  end
  score
end


# ==================

SCORE_MAP = {
1 => [0, 100, 200, 1000, 1100, 1200, 2000],
2 => [0, 0, 0, 200, 200, 200, 400],
3 => [0, 0, 0, 300, 300, 300, 600],
4 => [0, 0, 0, 400, 400, 400, 800],
5 => [0, 50, 100, 500, 550, 600, 1000],
6 => [0, 0, 0, 600, 600, 600, 1200]
}

def score( dice )
(1..6).inject(0) do |score, die|
  score += SCORE_MAP[die][dice.count(die)]
end
end
