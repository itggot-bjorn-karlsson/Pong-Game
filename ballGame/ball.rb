
class Ball 

    def initialize(image_path)
        @image = Gosu::Image.new(image_path)
        @vel_x = set_initial_speed
        @vel_y = set_initial_speed
        @x = rand(0..640)
        @y = rand(0..480)
        # @x = (640 / 2) - @image.width / 2 
        # @y = (480 / 2) - @image.height / 2 
    end 

    def set_initial_speed
        speed = rand(-3..3)
        if speed == 0
            set_initial_speed
        else 
            return speed 
        end   
    end 

    def bounce?
         if @x <= 0
             @x = 0
             @vel_x *= -1 
         elsif @y <= 0
             @y = 0
             @vel_y *= - 1 
         elsif @x >= 640 - @image.width
             @x = 640 - @image.width
             @vel_x *= - 1 
         elsif @y >= 480 - @image.height
             @y = 480 - @image.height
             @vel_y *= - 1 
         end 
    end         
    
    
    def update 
         @x += @vel_x
         @y += @vel_y
         bounce?
    end 
    
    def draw 
        @image.draw(@x,@y,0)
    end 
    
    
end 