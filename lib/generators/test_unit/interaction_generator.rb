require 'rails/generators/named_base'

module TestUnit
  class InteractionGenerator < ::Rails::Generators::NamedBase
    source_root File.expand_path("../templates", __FILE__)

    def create_interaction_file
      template "interaction_test_unit.rb", File.join('test/interactions/', class_path, "#{file_name}_test.rb")
    end

  end  
end
