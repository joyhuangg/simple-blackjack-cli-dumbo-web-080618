def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  s = get_user_input
  if s == 'h'
    card_total += deal_card
  elsif s != 's'
    invalid_command
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round


  # display_card_total(total)
  until total > 21
    choice = hit?(total)
    if (choice == total)
      hit?(total)
    else
      total = choice
    end
    display_card_total(total)
  end
  end_game(total)
end
