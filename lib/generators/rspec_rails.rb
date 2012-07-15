module Generails
  module Generators
    class RspecRailsGenerator < Rails::Generators::Base
      include Rails::Generators::ResourceHelpers

      source_root Rails.root

      desc "Add rspec-rails into gemfile and install it"

      def install
        gem "rspec-rails"
        run "bundle install"
      end

      # def add_gem_into_gemfile
      #   gem = "gem rspec-rails"
      #   file = File.new("#{Rails.root}/Gemfile")
      #   file.write(gem)
      #   file.close
      # end

    end
  end
end

