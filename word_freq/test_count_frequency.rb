require_relative 'count_frequency.rb'
require 'test/unit'

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end

  def test_single_word
    assert_equal({'cat' => 1}, count_frequency(['cat']))
  end

  def test_two_different_words
    assert_equal({'cat' => 1, 'dog' => 1}, count_frequency(['cat', 'dog']))
  end

  def test_same_word_twice
    assert_equal({'cat' => 2}, count_frequency(['cat', 'cat']))
  end

  def test_two_words_with_adjacent_repeat
    assert_equal({'cat' => 2, 'dog' => 1}, count_frequency(['cat', 'cat', 'dog']))
  end

  def test_two_words_with_non_adjacent_repeat
    assert_equal({'cat' => 2, 'dog' => 1}, count_frequency(['cat', 'dog', 'cat']))
  end

  end
