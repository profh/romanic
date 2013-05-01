module Romanic
  module RomanicStrings
    # Convert roman numerals to integers
    def from_roman
      string = self
      return nil unless string.to_s.match(IS_ROMAN)
      ROMAN_LOOKUP.inject(0) do |result, (roman, arabic)|
        while string.index(roman) == 0
          result += arabic
          string.slice!(roman)
        end
        result
      end
    end
  end
end

# Add methods to the String class
String.send :include, Romanic::RomanicStrings