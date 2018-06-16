ImageEntity = Object:extend()

function ImageEntity:new(image_file, x, y, initial_speed)
  self.image = love.graphics.newImage(image_file)
  self.x = x
  self.y = y
  self.speed = initial_speed
  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
end

function ImageEntity:left()
  return self.x
end

function ImageEntity:right()
  return self.x + self.width
end

function ImageEntity:top()
  return self.y
end

function ImageEntity:bottom()
  return self.y + self.height
end

function ImageEntity:x_center()
  return self.x + self.width / 2
end

function ImageEntity:isCollidingWith(obj)
  return self:right()  > obj:left()  and
         self:left()   < obj:right() and
         self:bottom() > obj:top()   and
         self:top()    < obj:bottom()
end
