require 'rubygems'
require 'attr_comparable'

class Human
  attr_accessor :height, :weight
  attr_comparable :height
end
