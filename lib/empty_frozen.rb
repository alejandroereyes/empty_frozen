require "empty_frozen/version"

module EmptyFrozen
  def self.included(base)
    base.class_eval do
      singleton_class.send(:alias_method, :empty, :new)

      def self.empty_frozen
        @_empty_frozen ||= empty.freeze
      end
    end
  end
end

require "empty_frozen/core_ext"
