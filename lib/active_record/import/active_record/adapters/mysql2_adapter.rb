require "active_record/connection_adapters/mysql2_adapter"

class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  include ActiveRecord::Import::MysqlAdapter
end
