def check_guess(number)
  if number + 5 < settings.secret_number
    guess = "Way too low!" 
  elsif number < settings.secret_number
    guess = "Too low!"
  elsif number == settings.secret_number
    guess = "Correct!"
  elsif number - 5 > settings.secret_number
    guess = "Way too high!"
  elsif number > settings.secret_number
    guess = "Too high!"
  end
end