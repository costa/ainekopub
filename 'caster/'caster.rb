
require 'aineko'

module Aineko
  class Caster
    class << self
      def cast(&block)
        new.instance_eval &block
      end
    end

    def initialize
      @sinks = { }
    end

    def from(*content_stores)
      for cs in content_stores.flatten
        cs.notify!(:content_added, self, :content_added)
      end
    end

    def to(content_store, *filters)
      @sinks[content_store] = filters
    end
    def tags(*ttt)
      ttt # TODO real filters!
    end
    alias tag tags

# notifications
    def content_added(src, *args)
      for (sink, filter) in @sinks
        if filter.pass? arg[0]
          sink.publish! arg[0]
        end
      end
    end

    Aineko.papconfig binding
  end
end
