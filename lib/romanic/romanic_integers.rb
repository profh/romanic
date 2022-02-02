module Romanic
  module RomanicIntegers
    # Convert integers to roman numerals
    def to_roman
      number = self
      return nil unless number.class == Integer
      return nil unless number > 0 and number < 5000
      ROMAN_LOOKUP.inject("") do |result, (roman, arabic)|
        # divmod() returns array of quotient and modulus
        count, number = number.divmod(arabic)
        result << (roman * count)
        result
      end
    end
  end
end

# Add methods to the Integer class
Integer.send :include, Romanic::RomanicIntegers
