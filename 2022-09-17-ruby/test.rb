require_relative "task"
require "test/unit"

class TestRomanNumeralEquals < Test::Unit::TestCase

  def test_equals_if_input_is_same
    roman_numeral_a = RomanNumeral.new("I")
    roman_numeral_b = RomanNumeral.new("I")

    expected = true
    actual = roman_numeral_a == roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_doesnt_equal_if_input_is_different
    roman_numeral_a = RomanNumeral.new("I")
    roman_numeral_b = RomanNumeral.new("IV")

    expected = false
    actual = roman_numeral_a == roman_numeral_b

    assert_equal(expected, actual)
  end

end


class TestRomanNumeralAddition < Test::Unit::TestCase

  def test_adds_one_and_one
    roman_numeral_a = RomanNumeral.new("I")
    roman_numeral_b = RomanNumeral.new("I")

    expected = RomanNumeral.new("II")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_one_and_two
    roman_numeral_a = RomanNumeral.new("I")
    roman_numeral_b = RomanNumeral.new("II")

    expected = RomanNumeral.new("III")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_two_and_two
    roman_numeral_a = RomanNumeral.new("II")
    roman_numeral_b = RomanNumeral.new("II")

    expected = RomanNumeral.new("IV")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_two_and_three
    roman_numeral_a = RomanNumeral.new("II")
    roman_numeral_b = RomanNumeral.new("III")

    expected = RomanNumeral.new("V")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_three_and_three
    roman_numeral_a = RomanNumeral.new("III")
    roman_numeral_b = RomanNumeral.new("III")

    expected = RomanNumeral.new("VI")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_four_and_three
    roman_numeral_a = RomanNumeral.new("IV")
    roman_numeral_b = RomanNumeral.new("III")

    expected = RomanNumeral.new("VII")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_three_and_four
    roman_numeral_a = RomanNumeral.new("III")
    roman_numeral_b = RomanNumeral.new("IV")

    expected = RomanNumeral.new("VII")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_one_and_five
    roman_numeral_a = RomanNumeral.new("I")
    roman_numeral_b = RomanNumeral.new("V")

    expected = RomanNumeral.new("VI")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_five_and_four
    roman_numeral_a = RomanNumeral.new("V")
    roman_numeral_b = RomanNumeral.new("IV")

    expected = RomanNumeral.new("IX")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_five_and_five
    roman_numeral_a = RomanNumeral.new("V")
    roman_numeral_b = RomanNumeral.new("V")

    expected = RomanNumeral.new("X")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_eleven_and_eleven
    roman_numeral_a = RomanNumeral.new("XI")
    roman_numeral_b = RomanNumeral.new("XI")

    expected = RomanNumeral.new("XXII")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_nine_and_eleven
    roman_numeral_a = RomanNumeral.new("IX")
    roman_numeral_b = RomanNumeral.new("XI")

    expected = RomanNumeral.new("XX")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_thirty_and_ten
    roman_numeral_a = RomanNumeral.new("XXX")
    roman_numeral_b = RomanNumeral.new("X")

    expected = RomanNumeral.new("XL")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_fourty_and_ten
    roman_numeral_a = RomanNumeral.new("XL")
    roman_numeral_b = RomanNumeral.new("X")

    expected = RomanNumeral.new("L")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_fiftytwo_and_twelve
    roman_numeral_a = RomanNumeral.new("LXXX")
    roman_numeral_b = RomanNumeral.new("X")

    expected = RomanNumeral.new("XC")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

  def test_adds_ninety_and_ten
    roman_numeral_a = RomanNumeral.new("XC")
    roman_numeral_b = RomanNumeral.new("X")

    expected = RomanNumeral.new("C")
    actual = roman_numeral_a + roman_numeral_b

    assert_equal(expected, actual)
  end

end