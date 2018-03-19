require 'gosu'
require_relative 'ball.rb'
require_relative 'paddle.rb'

class Game < Gosu::Window

    def initialize
        super 640,480
        setup   
    end

    def setup
        @balls = []
        1.times do |_|
         @balls << Ball.new('assets/ball.bmp')
        end 
        @player_1 = Paddle.new('left')
        @player_2 = Paddle.new('right')
    end 

    def button_hold
        if button_down? Gosu::KbW
            @player_1.move_up
        elsif button_down? Gosu::KbS
            @player_1.move_down
        end 

        if button_down? Gosu::KbUp
            @player_2.move_up
        elsif button_down? Gosu::KbDown
            @player_2.move_down
        end 

        if button_down? Gosu::KbEscape
            exit 
        end

        if button_down? Gosu::KbG 
            rand(1..1000).times do |_|
             @balls << Ball.new('assets/ball.bmp')
            end 
        end  
    end 
    
    def button_down(id)
      ##
    end 
    
    
    def update 
        @balls.each do |ball|
         ball.update
        end 
        button_hold
    end 
    
    def draw
        @balls.each do |ball|
         ball.draw
        end 
        @player_1.draw
        @player_2.draw
    end 
    
end 

Game.new.show