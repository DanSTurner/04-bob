class Bob

  def self.response(input)
    if self.shouting?(input)
      'Woah, chill out!'
    elsif self.question?(input)
      'Sure.'
    elsif self.statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
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

end