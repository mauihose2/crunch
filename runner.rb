%w[
  lib/flatten
].each { |file| require_relative file.to_s }

puts Crunch::Array.flatten([1, 2, 3, [1, 2, 3,[4]]])
