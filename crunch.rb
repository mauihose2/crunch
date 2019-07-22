# frozen_string_literal: true

require 'byebug'

%w[
  lib/flatten
].each { |file| require_relative file.to_s }

# TODO: read input from console
puts Crunch::Array.flatten([1, [2, 3], 4]).to_s
puts Crunch::Array.flatten([[1], [2, 3], 4]).to_s
puts Crunch::Array.flatten([[1, [2, 3], 4]]).to_s
