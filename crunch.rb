require 'byebug'

%w[
  lib/flatten
].each { |file| require_relative file.to_s }

arr=[1, 2, 3, [1, 2, 3,[4]]]
puts Crunch::Array.flatten(arr)
