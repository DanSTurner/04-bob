class Bob
  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def shouting?(input)
  	!input.empty? && input == input.upcase
  end

  def question?(input)
  	!input.empty? && input[-1, 1] == "?"
  end

  def statement?(input)
  	!input.empty?
  end

#  loop do
#    input = gets.chomp
#    puts response_for(input)
#  end 

end

# bob = Bob.new
# puts bob.response_for("test")