#user starts the game facing forward.
#user is told: by typing the command, they can move left, right, or forward.
#if they move right, they immediately die to a goblin .
#if they move left, they immediately die to a werewolf.
#if they move forward, they live, receive a congratulations, and can move again.
#if they move forward twice, they win. (ONLY WAY TO WIN)
#any key entered besides left, right, or forward triggers a reminder message.

move_num = 1
while true do

  puts "Welcome warrior! You are currently facing forward. You may move by typing left, right, or forward. "

  user_input = gets.chomp.downcase

  if user_input == "right"
    puts "Oh no! You were impaled by a goblin!"
    break
  elsif user_input == "left"
    puts "Darnit! You were chewed up by a werewolf!"
    break
  elsif user_input == "forward"
    puts "Huzzah! Wonderful warrrior, you live!! Go on, move again - type left, right, or forward."
    if move_num == 2
      puts "Brave warrior! You've succeeded!"
      break
    end
  move_num += 1
  end
end
