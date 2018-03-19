class Paddle

    def initialize(position)
        @image = Gosu::Image.new('assets/paddle.bmp')
        
        if position == 'left'
            @x = 10
        else 
            @x = 640 - 30
        end 
        @y = (480 / 2) - @image.height / 2
    end 

    def move_up
        @y -= 5
    end 

    def move_down
        @y += 5
    end 
    
    def draw 
        @image.draw(@x, @y, 0)
    end 

end 
