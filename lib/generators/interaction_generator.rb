require 'rails/generators/named_base'

class InteractionGenerator < ::Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)
  class_option :requirements, type: 'array', default: []

  def create_interaction_file
    template "interaction.rb", File.join('app/interactions/', class_path, "#{file_name}.rb")
  end

  hook_for :test_framework

  protected

  def class_name
    file_name.camelize
  end

  def interaction_namespaced(&block)
    namespaces = class_path.reverse.map do |module_name|
      build_namespaces(module_name)
    end
    content = capture(&block)
    content = wrap_with_namespace(content) if namespaced?
    content = indent(content).chomp
    content = namespaces.reduce {|mod, memo| memo % mod } % content
    concat(content)
  end

  def build_namespaces(module_name)
    "module #{module_name.camelize}\n%s\nend\n"
  end

end
