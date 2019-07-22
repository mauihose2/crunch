# frozen_string_literal: true

module Crunch
  module Array
    extend self

    def flatten(arr = [])
      solve(arr)
    end

    private

    # TODO: refactor to consider time complexity
    # TODO: refactor to consider space complexity
    def solve(arr = [], flt = [])
      arr.each do |e|
        if e.class.to_s == 'Array'
          solve(e, flt)
        else
          flt << e
        end
      end
      flt
    end
  end
end
