require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerStreet < Test::Unit::TestCase
  def setup
    @tester = Faker::Sat
  end

  def rfc_persona_fisica
    assert @tester.rfc_persona_fisica.match(/[A-Z]{4}[0-9]{6}.?{3}/)
  end

  def rfc_persona_moral
    assert @tester.rfc_persona_moral.match(/[A-Z]{3}[0-9]{6}.?{3}/)
  end

  def rfc
    assert @tester.rfc.match(/[A-Z]{4}[0-9]{6}.?{3}/)
    assert @tester.rfc(false).match(/[A-Z]{3}[0-9]{6}.?{3}/)
  end
  
end
