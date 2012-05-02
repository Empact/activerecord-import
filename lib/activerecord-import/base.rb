module ActiveRecord::Import
  AdapterPath = File.join File.expand_path(File.dirname(__FILE__)), "active_record/adapters"

  def self.base_adapter(adapter)
    case adapter
    when 'mysqlspatial' then 'mysql'
    when 'spatialite' then 'sqlite3'
    when 'postgis' then 'postgresql'
    else adapter
    end
  end

  # Loads the import functionality for a specific database adapter
  def self.require_adapter(adapter)
    require File.join(AdapterPath, "abstract_adapter")
    require File.join(AdapterPath, "#{base_adapter(adapter)}_adapter")
  end
end


this_dir = File.dirname(__FILE__)
require File.join(this_dir, "import")
require File.join(this_dir, "active_record/adapters/abstract_adapter")
require File.join(this_dir, "synchronize")
