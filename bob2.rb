class Bob
  loop do
    input = gets.chomp
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      puts 'Woah, chill out!'
    elsif question?(input)
      puts 'Sure.'
    elsif statement?(input)
      puts 'Whatever.'
    else
      puts 'Fine, be that way.'
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

end

bob = Bob.new
bob