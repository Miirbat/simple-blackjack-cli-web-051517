def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
   puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 firstCard = deal_card()
 secondCard = deal_card()
 card_total = firstCard + secondCard
 display_card_total(card_total)
 card_total
end

#but how is this function supposed to know what the card_total from the initial function is?
# def hit?(card_total)
#   prompt_user()
#   userInput = get_user_input()
#   if userInput == "h"
#     newCard = deal_card()
#     puts card_total + newCard
#   elsif userInput == "s"
#     puts card_total
#   else
#     invalid_command()
#     prompt_user()
#     puts card_total
#   end
# end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
  else
    invalid_command()
  end
end


def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   welcome()
#   firstTwoCards = initial_round()
#   total_total = hit?(firstTwoCards)
#   display_card_total()
#   if total_total == 21
#     puts "Blackjack!!!!!"
#   elsif total_total > 21
#     end_game()
#   elsif total_total = firstTwoCards
#     puts total_total
#     break
#   else
#     while total_total < 21
#       again_total = hit?(total_total)
#       return if total_total == again_total
#       total_total = again_total
#     end
#   end
# end


def runner
  welcome()
  card_total = initial_round()
    until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    end
    end_game(card_total)
end


  # return if total_total == firstTwoCards
  # while total_total < 21
  #   again_total = hit?(total_total)
  #   display_card_total(total_total)
  #   return if total_total == again_total
  #   total_total = again_total
  # end
  # if total_total > 21
  #   end_game()
  # elsif total_total == 21
  #   puts "Blackjack!!!"
  # else
  #   return total_total
  # end
# end
