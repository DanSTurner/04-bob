require 'minitest/autorun'
require 'minitest/pride'

ENV["RUBY_ENV"] = "test"

require './bob'

class BobOutputTest < MiniTest::Unit::TestCase
  
  def test_shouting
    assert_equal('Woah, chill out!', Bob.response('SHOUTING'))
  end

  def test_question
    assert_equal('Sure.', Bob.response('a question?'))
  end

  def test_statement
    assert_equal('Whatever.', Bob.response('a statement.'))
  end

  def test_default
    assert_equal('Fine, be that way.', Bob.response(''))
  end

end

class BobInputTest < MiniTest::Unit::TestCase
  # Testing tip: The methods below seem to only be used privately,
  # may want to remove them if the implementation is likely to change.
  def test_check_to_see_if_the_input_ends_with_a_?
    assert_equal(true, Bob.question?('Hello?'))
  end

  def test_have_have_a_string_input_longer_than_0
    assert_equal(true, Bob.statement?('At least 1'))
  end

  def test_have_all_uppercase_characters
    assert_equal(true, Bob.shouting?('HELLO'))
  end

end