class Tree

  attr_reader :rings

  def initialize(input_options)
    @rings = input_options[:rings]
  end

  def rings
    @rings
  end

  def bear_fruit
    if @rings.between?(8, 14)
      put true
    end
  end

  def winter_season
    @rings = @rings + 1
  end
end

tree1 = Tree.new(rings: 22)
tree1.bear_fruit