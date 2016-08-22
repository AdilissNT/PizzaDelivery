require 'gosu'

class Car5 
  SPEED = 6.5
 def initialize (x, y)
  @imagem = Gosu::Image.load_tiles("2car.png", 70, 70) [5]
  @x = x
  @y = y
 end 

 def draw
  puts @x
  @imagem.draw(@x, @y, 1)
 end 

 def speed
    @x -= SPEED # @x = @x + SPEED
    if @x < -20 then @x = 650 end
  end
end