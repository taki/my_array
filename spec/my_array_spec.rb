# frozen_string_literal: true

require_relative '../my_array'

RSpec.describe MyArray do
  describe '.new' do
    it { expect { described_class.new }.to raise_error(NoMethodError) }
  end

  describe '#[]' do
    let(:my_array) { described_class[0, 1, 2] }

    it { expect(my_array[0]).to eq 0 }
    it { expect(my_array[1]).to eq 1 }
    it { expect(my_array[2]).to eq 2 }
    it { expect(my_array[3]).to eq nil }
  end

  describe '#each' do
    let(:my_array) { described_class[0, 1, 2] }

    context 'when block is given' do
      specify do
        return_value = my_array.each {}

        expect(return_value).to eq my_array
      end
    end

    context 'when block is not given' do
      specify do
        return_value = my_array.each

        expect(return_value).to be_an Enumerator
      end
    end
  end
end
