module FuzzyRecord
  module Generators #:nodoc
    class ConfigGenerator < Rails::Generators::Base #:nodoc
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))


      desc <<DESC
Description:
    Copies FuzzyRecord configuration file to your application's initializer directory.
DESC
      # Create FuzzyRecord config files
      def copy_config_file
        template 'fuzzy_record_config.rb', 'config/initializers/fuzzy_record_config.rb'
        template 'fuzzy_predicates.yml', 'config/fuzzy_predicates.yml'
      end
    end
  end
end
