require 'rails/generators'
require 'rails/generators/named_base'

module SimpleInteraction
  
  class SimpleInteractionGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    argument :params, default: []

    check_class_collision

    def create_initializer_file
      template "interaction.rb", File.join('app/models', class_path, "#{file_name}.rb")
    end

    hook_for :test_framework

  end

end