module ActiveRecord
  module CompatibleLegacyMigration
    def self.migration_class
      if ActiveRecord::VERSION::MAJOR >= 5
        ActiveRecord::Migration[4.2]
      else
        ActiveRecord::Migration
      end
    end
  end
end
