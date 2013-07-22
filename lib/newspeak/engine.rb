module Newspeak
  class Engine < ::Rails::Engine
    isolate_namespace Newspeak

	config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.integration_tool :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end    
  end
end
