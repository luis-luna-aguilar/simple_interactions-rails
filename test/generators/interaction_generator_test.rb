require 'test_helper'

class InteractionGeneratorTest < Rails::Generators::TestCase
  tests InteractionGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  def test_interaction_generation
    run_generator %w(Users::Create --requirements params --fail_with ErrorClass)
    
    assert_file "app/interactions/users/create.rb" do |interaction|
      assert_match(/requires \:params/, interaction)
      assert_match(/module Users/, interaction)
      assert_match(/class Create/, interaction)
      assert_match(/include SimpleInteraction/, interaction)
      assert_match(/fail_with 'ErrorClass'/, interaction)
    end
  
  end
end
