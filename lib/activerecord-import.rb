module ActiveRecord
  extend ActiveSupport::Autoload

  autoload :Import

  class Base
    class << self
      def establish_connection_with_activerecord_import(*args)
        establish_connection_without_activerecord_import(*args)
        ActiveSupport.run_load_hooks(:active_record_connection_established, connection_pool)
      end
      alias_method_chain :establish_connection, :activerecord_import
    end
  end
end

ActiveSupport.on_load(:active_record_connection_established) do |connection_pool|
  ActiveRecord::Import.require_adapter connection_pool.spec.config[:adapter]
end
