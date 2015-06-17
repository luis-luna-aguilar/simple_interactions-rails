require 'rails/generators/named_base'

class InteractionGenerator < ::Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)
  class_option :requirements, type: 'array', default: []

  def create_interaction_file
    template "interaction_spec.rb", File.join('test/interactions/', class_path, "#{file_name}_spec.rb")
  end

end
