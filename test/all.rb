require 'minitest/autorun'

class TestPanda < MiniTest::Test
  def test_panda_is_happy
    panda = "sad"
    assert_equal("happy", panda)
  end
end
