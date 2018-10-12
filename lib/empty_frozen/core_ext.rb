require 'set' unless defined?(Set)

module CoreExt
  LOAD = [
    String,
    Array,
    Hash,
    Set,
  ].freeze
end

CoreExt::LOAD.each do |klass|
  klass.send(:include, EmptyFrozen)
end
