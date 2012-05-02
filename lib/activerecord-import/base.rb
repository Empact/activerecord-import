require "active_record"
require "active_record/version"

module ActiveRecord::Import
  AdapterPath = File.join File.expand_path(File.dirname(__FILE__)), "/active_record/adapters"

  # Loads the import functionality for a specific database adapter
  def self.require_adapter(adapter)
    require File.join(AdapterPath,"/abstract_adapter")
    require File.join(AdapterPath,"/#{adapter}_adapter")
  end

  # Loads the import functionality for the passed in ActiveRecord connection
  def self.load_from_connection_pool(connection_pool)
    require_adapter connection_pool.spec.config[:adapter]
  end
end


this_dir = File.dirname(__FILE__)
require File.join(this_dir, "import")
require File.join(this_dir, "active_record/adapters/abstract_adapter")
require File.join(this_dir, "synchronize")
