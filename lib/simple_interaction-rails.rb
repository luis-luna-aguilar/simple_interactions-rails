require 'rails'
require 'simple_interaction/generators/simple_interaction_generator'
require "simple_interaction/rails/version"

module SimpleInteraction
  module Rails
    class Railtie < ::Rails::Railtie
    end
  end
end