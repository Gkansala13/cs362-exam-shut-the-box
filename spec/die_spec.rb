require_relative '../lib/die'

describe 'A die' do

  describe 'attributes' do
    it 'Has number of sides' do
      die=Die.new
      expect(die).to respond_to(:number_of_sides)
    end

    it 'Has face value' do
      die=Die.new
      expect(die).to respond_to(:face_value)
    end
  end

  describe 'number of sides' do
    it 'has six sides by default' do
      
    end

    it 'can be created with a custom number of sides' do
      
    end
  end

  describe 'face value' do
    it 'has a face value of 1 by default' do
      
    end
  end

  describe '#to_s string representation' do
    it 'tunrs facevalue into string' do
      
    end
  end

  describe 'rolling' do
    # Don't spend time testing #roll or #random_face_value. Move on.
  end

end
