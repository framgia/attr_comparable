require "attr_comparable/version"

module AttrComparable
  module ClassMethods
    def attr_comparable *attrs
      attrs.each do |attr|
        define_method("#{attr}?"){|param| self.send(attr) == param }
      end
    end
  end
 
  module InstanceMethods
  end

  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end
end
Object.send(:include, AttrComparable)
