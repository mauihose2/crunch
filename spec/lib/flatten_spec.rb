# froz<F10>en_string_literal: true

require 'spec_helper'

RSpec.describe Crunch::Array.flatten do
  # TODO: add more comprehensive specs
  it 'flattens arrays' do
    a1 = [1, [2, 3], [4], 5]
    a2 = [1, 2, 3, [4, 5]]
    a3 = [[1], [2], [3], [4], [5]]
    a4 = [[1, 2], 3, [4, 5]]

    ans = [1, 2, 3, 4, 5]

    expect(Crunch::Array.flatten(a1)).to eq ans
    expect(Crunch::Array.flatten(a2)).to eq ans
    expect(Crunch::Array.flatten(a3)).to eq ans
    expect(Crunch::Array.flatten(a4)).to eq ans
  end
end
