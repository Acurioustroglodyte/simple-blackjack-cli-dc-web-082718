def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(10) + 1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  return display_card_total(deal_card() + deal_card())
end

def hit?(number)
  prompt_user()
  card_total = 0
  input = get_user_input()
  if input.downcase == 's'
    return card_total
  elsif input.downcase == 'h'
    card_total += deal_card()
  else
    invalid_command()
    prompt_user()
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
