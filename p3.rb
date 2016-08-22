require 'gosu'

class P3
 def initialize (x, y)
  @imagem = Gosu::Image.load_tiles("p1.png", 35, 26) [0]
  @x = x
  @y = y
 end 

 def draw
  puts @x
  @imagem.draw(@x, @y, 1)
 end 
end