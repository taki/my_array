# frozen_string_literal: true

require_relative '../my_array'

RSpec.describe MyArray do
  it { expect(described_class.new.is_a?(described_class)).to eq true }
end
