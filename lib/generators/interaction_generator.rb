require 'rails/generators/named_base'

class InteractionGenerator < ::Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)
  class_option :requirements, type: 'array', default: []
  class_option :fail_with, type: 'string', default: nil

  def create_interaction_file
    template "interaction.rb", File.join('app/interactions/', class_path, "#{file_name}.rb")
  end

  hook_for :test_framework

  protected

  def class_name
    file_name.camelize
  end

  def interaction_namespaced(&block)
    content = capture(&block)
    content = wrap_in_namespaces(content)
    content = wrap_with_namespace(content) if namespaced?
    concat(content)
  end

  def wrap_in_namespaces(content)
    namespaces = build_namespaces
    return content unless namespaces.any?
    content = indent(content, namespaces.size * 2).chomp
    namespaces.reduce {|mod, memo| memo % indent(mod).chomp } % content    
  end

  def build_namespaces
    class_path.reverse.map do |module_name|
      namespaces_layout(module_name)
    end    
  end

  def namespaces_layout(module_name)
    "module #{module_name.camelize}\n%s\nend\n"
  end

end
