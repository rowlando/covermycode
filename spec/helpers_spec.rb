$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'helpers'

describe Helpers do
  include Helpers

  context 'with no arguments' do
    it 'returns 0' do
      expect(calculate_area_of_box_sides).to eq(0)
    end
  end

  context 'with dimensions set' do
    it 'returns the total area of all sides' do
      expect(
        calculate_area_of_box_sides(width: 5,
                                    height: 5,
                                    depth: 5
                                   )
      ).to eq(150)
    end
  end

  context 'with dimensions set to fractional units' do
    it 'returns the area to 2 decimal places' do
      expect(
        calculate_area_of_box_sides(width: 1.256,
                                    height: 2.635,
                                    depth: 3.167)
      ).to eq(31.26)
    end
  end
end
