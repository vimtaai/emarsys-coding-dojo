class RomanNumeral

  def value
    @value
  end

  def initialize(value)
    @value = value
  end

  def normalized_value
    new_value = @value

    replacements = {
      "IV" => "I" * 4,
      "V" => "I" * 5,
      "IX" => "I" * 9,
      "XL" => "I" * 40,
      "L" => "I" * 50,
      "XC" => "I" * 90,
      "X" => "I" * 10,
    }

    replacements.each do |from, to|
      while new_value[from]
        new_value[from] = to
      end
    end

    new_value
  end

  def +(roman_numeral)
    new_value = normalized_value + roman_numeral.normalized_value

    replacements = {
      "I" * 100 => "C",
      "I" * 90 => "XC",
      "I" * 50 => "L",
      "I" * 40 => "XL",
      "I" * 10 => "X",
      "I" * 9 => "IX",
      "I" * 5 => "V",
      "I" * 4 => "IV",
    }

    replacements.each do |from, to|
      while new_value[from]
        new_value[from] = to
      end
    end

    RomanNumeral.new(new_value)
  end

  def ==(roman_numeral)
    @value == roman_numeral.value
  end

end