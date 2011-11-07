require "active_record/connection_adapters/mysql_adapter"
require "active_record/import/adapters/mysql_adapter"

class ActiveRecord::ConnectionAdapters::MysqlAdapter
  include ActiveRecord::Import::MysqlAdapter::InstanceMethods
end
