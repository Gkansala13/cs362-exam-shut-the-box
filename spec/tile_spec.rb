require_relative '../lib/tile'

describe 'A tile' do

  describe 'attributes' do

    it 'has a value' do
      tile=Tile.new("FAKE")
      expect(tile.value).to eq("FAKE")
    end
  end

  describe '#up?' do
    it 'is up by default' do
      tile=Tile.new("FAKE")
      expect(tile.up).to eq(true)
    end
  end

  describe '#flip' do
    it 'is up after being flipped' do
      tile=Tile.new("FAKE")
      tile.flip
      expect(tile.up).to eq(false)
    end

    it 'stays down despite being flipped more than once' do
      tile=Tile.new("FAKE")
      tile.flip
      tile.flip
      expect(tile.up).to eq(false)
    end

  end

  describe '#to_s string representation' do
    context 'when up' do
      it 'shows its value within brackets' do
      tile=Tile.new("FAKE")
      expect(tile.to_s).to eq('[FAKE]')
      end
    end

    context 'when down' do
      it 'shows a space within brackets' do
        tile=Tile.new("FAKE")
        tile.flip
        expect(tile.to_s).to eq('[ ]')
      end
    end
  end

end
