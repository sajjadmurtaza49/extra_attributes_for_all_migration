require "extra_attributes_for_all_migration/version"

module ExtraAttributesForAllMigration
  require 'active_record/connection_adapters/abstract/schema_definitions'

  class ActiveRecord::ConnectionAdapters::TableDefinition

    def eagling(*args)
      options = args.extract_options!

      options.each do |column_name, data_type|
        column(column_name, data_type)
      end
    end
  end

end
