module FuzzyWhere
  module Generators #:nodoc
    class ConfigGenerator < Rails::Generators::Base #:nodoc
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))


      desc <<DESC
Description:
    Copies FuzzyWhere configuration file to your application's initializer directory.
DESC
      # Create FuzzyWhere config file
      def copy_config_file
        template 'fuzzy_where_config.rb', 'config/initializers/fuzzy_where_config.rb'
      end

      # Create fuzzy predicates definitions file
      def copy_predicates_file
        template 'fuzzy_predicates.yml', 'config/fuzzy_predicates.yml'
      end
    end
  end
end
