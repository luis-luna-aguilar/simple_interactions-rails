require 'test_helper'
require 'generators/rspec/interaction_generator'

class InteractionSpecGeneratorTest < Rails::Generators::TestCase
  tests Rspec::InteractionGenerator
  destination File.expand_path("../../tmp/spec", File.dirname(__FILE__))
  setup :prepare_destination

  def test_spec_file_generation
    run_generator %w(Users::Create --requirements params --fail_with ErrorClass)
    
    assert_file "spec/interactions/users/create_spec.rb" do |interaction_test|
      assert_match /describe Users::Create/, interaction_test
    end 
  end
end
