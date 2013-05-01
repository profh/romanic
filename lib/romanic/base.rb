module Romanic
  extend self
  
  # some initial setup is necessary...
  IS_ROMAN = /^(?=.)M*(D?C{0,3}|C[DM])(L?X{0,3}|X[LC])(V?I{0,3}|I[VX])$/

  NUMERAL_ARABIC = [  1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  NUMERAL_ROMANS = %w(M     CM   D    CD   C    XC  L   XL   X IX  V IV  I)

  # Create my lookup array from previous two with zip()
  ROMAN_LOOKUP = NUMERAL_ROMANS.zip(NUMERAL_ARABIC)
  
end