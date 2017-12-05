class Cup
  MATERIALS = [
    :glass,
    :plastic,
    :copper,
    :wooden,
    :gold,
    :platinum,
    :ceramic
  ]

  def initialize(volume, material = :glass)
    @volume = volume
    if MATERIALS.include?(material)
      @material = material
    else
      raise 'you got some fancy cup we do not know how to handle'
    end

    @contents = nil
    @content_volume = 0
  end

  def fill(contents, amount = nil)
    if amount > @volume
      raise "You overpoured"
    else
      @contents = contents
      @content_volume = amount || @volume
    end
  end
end

cup = Cup.new(8)
require 'pry'
binding.pry
cup.fill(:milk, 10)
require 'pry'
binding.pry
