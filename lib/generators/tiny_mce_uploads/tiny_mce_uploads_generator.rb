require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'

class TinyMceUploadsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  class << self
    delegate :next_migration_number, :to => ActiveRecord::Generators::Base
  end

  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_accounts_table.rb'
  end
end

