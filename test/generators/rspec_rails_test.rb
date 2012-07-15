require "test_helper"

require "./lib/generators/rspec_rails"

class RspecRailsGeneratorTest < Rails::Generators::TestCase
  tests Generails::Generators::RspecRailsGenerator
  destination File.expand_path("../../tmp", __FILE__)

  test "rspec-rails generator file" do
    run_generator
    assert_file ".rspec", /--colour/
  end
end
