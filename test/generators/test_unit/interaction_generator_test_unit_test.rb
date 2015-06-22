require 'test_helper'
require 'generators/test_unit/interaction_generator'

class InteractionGeneratorTestUnitTest < Rails::Generators::TestCase
  tests TestUnit::InteractionGenerator
  destination File.expand_path("../../tmp/test", File.dirname(__FILE__))
  setup :prepare_destination

  def test_test_unit_file_generation
    run_generator %w(Users::Create --requirements params --fail_with ErrorClass)
    
    assert_file "test/interactions/users/create_test.rb" do |interaction_test|
      assert_instance_method :test_run_implemented, interaction_test do |test_run_implemented|
        assert_match /assert_nothing_raised/, test_run_implemented
      end
      assert_match /class Users::CreateTest/, interaction_test
    end 
  end
end
