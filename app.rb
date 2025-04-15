require "sinatra"
require "sinatra/reloader"

get("/") do
  erb (:main_page)
end

get ("/rock") do
  second_hand_choices=["rock","paper","scissors"]
  second_hand = second_hand_choices.sample
  if second_hand == "rock"
    pp outcome = "We tied!"
  elsif second_hand == "paper"
    pp outcome = "We lost!"
  else 
    pp outcome = "We won!"
  end 
  @text_to_appear = ["They played #{second_hand}!","#{outcome}"]
   erb(:Rock)
end

get ("/paper") do
  second_hand_choices=["rock","paper","scissors"]
  second_hand = second_hand_choices.sample
  if second_hand == "rock"
    pp outcome = "We won!"
  elsif second_hand == "paper"
    pp outcome = "We tied!"
  else 
    pp outcome = "We lost!"
  end 
  @text_to_appear = ["They played #{second_hand}!","#{outcome}"]
  erb(:Paper)
end

get ("/scissors") do
  second_hand_choices=["rock","paper","scissors"]
  second_hand = second_hand_choices.sample
  if second_hand == "rock"
    pp outcome = "We lost!"
  elsif second_hand == "paper"
    pp outcome = "We won!"
  else 
    pp outcome = "We tied!"
  end 
  @text_to_appear = ["They played #{second_hand}!","#{outcome}"]

  erb(:Scissors)
end 
