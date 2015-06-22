require 'test_helper'

class Users::CreateTest < ActiveSupport::TestCase
  
  def test_run_implemented
    assert_nothing_raised do
      Users::Create.run
    end    
  end

end
