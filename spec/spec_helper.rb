require 'rubygems'
require 'attr_comparable'

class Human < Struct.new(:height, :weight)
  attr_comparable :height
end
