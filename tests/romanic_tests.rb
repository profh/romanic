require "romanic"
require "minitest/autorun"

class TestRoman < MiniTest::Unit::TestCase

  def test_conversion_to_roman_numerals_works
    assert_equal('I', 1.to_roman)
    assert_equal('II', 2.to_roman)
    assert_equal('IV', 4.to_roman)
    assert_equal('XIV', 14.to_roman)
    assert_equal('XLIX', 49.to_roman)
    assert_equal('C', 100.to_roman)
    assert_equal('MCMXCIX', 1999.to_roman)
    assert_equal('MMMMCMXCIX', 4999.to_roman)
  end
  
  def test_out_of_bounds_conversions_to_roman_fail
    assert_equal(nil, 10001.to_roman)
    assert_equal(nil, 5000.to_roman)
    assert_equal(nil, 0.to_roman)
    assert_equal(nil, -3.to_roman)
  end

  def test_string_conversions_from_roman_works
    assert_equal(1, 'I'.from_roman)
    assert_equal(2, 'II'.from_roman)
    assert_equal(4, 'IV'.from_roman)
    assert_equal(14, 'XIV'.from_roman)
    assert_equal(49, 'XLIX'.from_roman)
    assert_equal(100, 'C'.from_roman)
    assert_equal(1999, 'MCMXCIX'.from_roman)
    assert_equal(4999, 'MMMMCMXCIX'.from_roman)
  end
  
  def test_non_roman_strings_fail
    assert_equal(nil, 'ii'.from_roman)
    assert_equal(nil, 'LKD'.from_roman)
    assert_equal(nil, '2010'.from_roman)
    assert_equal(nil, 'XX!'.from_roman)
    assert_equal(nil, 'IIII'.from_roman)
    assert_equal(nil, 'IIIII'.from_roman)
    assert_equal(nil, 'XIIII'.from_roman)
  end

end
