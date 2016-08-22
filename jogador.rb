require 'gosu'

class Jogador
 def initialize (x, y)
  @imagem = Gosu::Image.load_tiles("ent.png", 53, 64) [0]
  @pos_x = 10
  @pos_y = 382
 end 

 def draw
  puts @pos_x
  @imagem.draw(@pos_x, @pos_y, 1)
 end 

 def mover_direita
    @pos_x = @pos_x + 5
    if (@pos_x > 600) then @pos_x = 600
    end
  end
  def mover_esquerda
    @pos_x = @pos_x - 5
    if (@pos_x < 10) then @pos_x = 10
    end
  end
  def mover_cima
    @pos_y = @pos_y - 5
    if (@pos_y < 10) then @pos_y = 10
    end
  end
  def mover_baixo
    @pos_y = @pos_y + 5
    if (@pos_y > 382) then @pos_y = 382
  end
  end 
end