require_relative 'tile'


class TileSet
  attr_reader :quantity

  def initialize()
    @quantity= 9
  end
  
  def self.generate(quantity = 9)
    (1..quantity).map { |n| Tile.new(n) }
  end

end
