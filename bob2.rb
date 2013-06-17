class Bob


  def self.response_for(input)
    if self.shouting?(input)
      puts 'Woah, chill out!'
    elsif self.question?(input)
      puts 'Sure.'
    elsif self.statement?(input)
      puts 'Whatever.'
    else
      puts 'Fine, be that way.'
    end
  end

  def self.shouting?(input)
  	!input.empty? && input == input.upcase
  end

  def self.question?(input)
  	!input.empty? && input[-1, 1] == "?"
  end

  def self.statement?(input)
  	!input.empty?
  end
#  loop do
#    input = gets.chomp
#    self.response_for(input)
#  end


end

#bob = Bob.new
#bob