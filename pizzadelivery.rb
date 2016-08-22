require 'gosu'
require 'jogador'
require 'mario'
require 'car0'
require 'car1'
require 'car2'
require 'car3'
require 'car4'
require 'car5'
require 'car6'
require 'car7'
require 'p0'
require 'p1'
require 'p2'
require 'p3'

class Pizzadelivery < Gosu::Window

@@formato = [3, 1.0, 1.0, 0xffffff00]

  def initialize 
    super(640,480, false)
    self.caption = "Pizza Delivery"
    @imagem_fundo = Gosu::Image.new(self, "fundo.png", true)
    @jogador = Jogador.new(self.width/2, self.height-98)
    @mario = Mario.new(self.width/1.2, self.height-103)
    @car0 = Car0.new(self.width/1.13, self.height-430)
    @car1 = Car1.new(self.width/1.13, self.height-393)
    @car2 = Car2.new(self.width/1.13, self.height-359)
    @car3 = Car3.new(self.width/1.13, self.height-325)
    @car4 = Car4.new(self.width/1.13, self.height-288)
    @car5 = Car5.new(self.width/1.13, self.height-252)
    @car6 = Car6.new(self.width/1.13, self.height-217)
    @car7 = Car7.new(self.width/1.13, self.height-180)
    @p0 = P0.new(self.width/9, self.height-150)
    @p1 = P1.new(self.width/3.2, self.height-255)
    @p2 = P2.new(self.width/1.8, self.height-327)
    @p3 = P3.new(self.width/1.2, self.height-400)
    @x = 0
    @estado = "jogando"
    @sit = "INICIO"
    @tempo = 30
  end 

  def draw
    @imagem_fundo.draw(@x,0,0)
    @imagem_fundo.draw(@x + 640,0,0)
    @jogador.draw()
    @mario.draw()
    @car0.draw()
    @car1.draw()
    @car2.draw()
    @car3.draw()
    @car4.draw()
    @car5.draw()
    @car6.draw()
    @car7.draw()
    @p0.draw()
    @p1.draw()
    @p2.draw()
    @p3.draw()
    @tempo = 30
    end

  def update
    if @estado == "jogando" then
        @x = @x
        if  @x <- 640 then @x = 0 end
        if ( button_down?(Gosu::Button::KbRight) ) then
        @jogador.mover_direita
        end 
        if ( button_down?(Gosu::Button::KbLeft) ) then
        @jogador.mover_esquerda
        end
        if ( button_down?(Gosu::Button::KbUp) ) then
        @jogador.mover_cima
        end
        if ( button_down?(Gosu::Button::KbDown) ) then
        @jogador.mover_baixo
        end
        @car0.speed
        @car1.speed
        @car2.speed
        @car3.speed
        @car4.speed
        @car5.speed
        @car6.speed
        @car7.speed
        @tempo += 1.0/60.0
        if @tempo.to_i >= 30 then
            @sit = "FIM" end
    end
  end
end