def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(card_total)
   puts "Your cards add up to #{card_total}"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial_total = deal_card + deal_card

  display_card_total(initial_total)

  initial_total
end

def hit?(current_total)
  prompt_user
  hit_or_stay = get_user_input
  if hit_or_stay == "h" then
    new_card = deal_card
#    puts "new card = #{new_card}"
    current_total += new_card
  elsif hit_or_stay != "s" then
    invalid_command
    prompt_user
  end

#    puts "Current_total = #{current_total}"

    current_total

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_total = initial_round
  new_total = hit?(initial_total)
  until new_total > 21
    display_card_total(new_total)
    new_total = hit?(new_total)
  end

  display_card_total(new_total)
  end_game(new_total)

end

