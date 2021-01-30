dictionary = {
   :bear => "a creature that fishes in the river for salmon.",
   :river => "a body of water that contains salmon, and sometimes bears.",
   :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
  }

puts dictionary[:bear]


def move
  input = gets.chomp
  while true do
    if input == "hit"
      $arr.push(random_card)
      score
      $arr
      input = gets.chomp
    elsif input == "stick"
      $count += 1
      break
    elsif input == nil || input == '' || input == " "
      $count += 1
      break
    else
      puts "hit or stick?"
      input = gets.chomp
    end
  end
end

def score
  $news = {
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9",
    "ten" => "10",
    "jack" => "10",
    "queen" => "10",
    "king" => "10",
    "ace" => "11" }

    $polo = []

    $arr.each { |solo| $polo << [solo] }

    $polo.each do |sign|
      $news.find { |_key, values| [_key] == sign ? $score_arr << values : nil }
    end

    $score_arr.each { |tam| $final << tam[1].to_i }

    $score_score = $final.reduce(:+)

  if $count == 0
    puts "Score so far: " + $score_score.to_s
  end
end

def run_game
  move
  if $count == 1
    if $score_score == nil || $score_score == '' || $score_score == " "
      puts "You scored: "
    elsif $score_score > 21
      puts "You busted with: " + $score_score.to_s
    else
      puts "You scored: " + $score_score.to_s
    end
  end
end

$arr = []
$score_arr = []
$final = []
$count = 0
$lol

run_game



def move
  while count == do
    puts "hit or stick? "
    input = gets.chomp
      if input == "hit" || input == "stick"
        return input
      else
        puts "hit or stick? "
        inputs = gets.chomp
      end
  end
end

def score(hand)

  new = []

  numbers = {
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10,
    "ace" => 11 }

  hand.each do |x|
    numbers.each do |y, z|
      if x == y
        new << z
      end
    end
  end

  return new.reduce(:+)
end

def run_game
  move

  score
end

run_game
