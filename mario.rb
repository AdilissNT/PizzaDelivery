require 'gosu'

class Mario
 def initialize (x, y)
  @imagem = Gosu::Image.load_tiles("player.png", 28, 42) [0]
  @x = x
  @y = y
 end 

 def draw
  puts @x
  @imagem.draw(@x, @y, 1)
 end 
end