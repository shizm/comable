require 'comable_core'

require 'slim'
require 'sass-rails'
require 'compass-rails'

module Comable
  module Backend
    class Engine < ::Rails::Engine
      isolate_namespace Comable

      config.generators do |g|
        g.template_engine :slim
        g.stylesheet_engine :sass
        g.javascript_engine :coffee
        g.test_framework :rspec, fixture: true
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
      end
    end
  end
end
