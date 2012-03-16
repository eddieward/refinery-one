require 'refinery'

module Refinery
  module Instructions
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "instructions"
          plugin.activity = {:class => Instruction,}
        end
      end
    end
  end
end
