if defined?(Spork::TestFramework::RSpec)
  class Spork::TestFramework::RSpec < Spork::TestFramework
    def run_tests(argv, err, out)
      options = ::Rspec::Core::ConfigurationOptions.new(argv)
      options.parse_options
      ::RSpec::Core::CommandLine.new(options).run(err, out)
    end
  end
end
