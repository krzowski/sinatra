class Tries
  @@number = 0
  def self.number
    @@number
  end
  def self.increase
    @@number += 1
  end
  def self.reset
    @@number = 0
  end
end



def check_guess(guess)
  Tries.increase  
  if Tries.number == 5
    reset_game
    answer = "Wrong, reached limit of guesses! New game!"
  elsif guess + 5 < settings.secret_number
    answer = "Way too low" 
  elsif guess < settings.secret_number
    answer = "Too low!"
  elsif guess - 5 > settings.secret_number
    answer = "Way too high!"
  elsif guess > settings.secret_number
    answer = "Too high!"
  elsif guess == settings.secret_number
    reset_game
    answer = "Correct! New game!"
  end
end

def generate_number
  rand(100)
end

def reset_game
  settings.secret_number = generate_number
  Tries.reset
end