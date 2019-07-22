module Crunch
  module Array
    extend self

    def flatten(arr=[])
      return solve(arr)
    end

    private

    # TODO: refactor to consider time complexity
    # TODO: refactor to consider space complexity
    def solve(arr=[], flattened=[])
      arr.each do |e|
        if e.class.to_s == 'Array'
          solve(e, flattened)
        else
          flattened << e
        end
      end
      flattened
    end
  end
end
