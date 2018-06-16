Enemy = ImageEntity:extend()

local image_file = "assets/snake.png"
local initial_x = 325
local initial_y = 450
local initial_speed = 100

function Enemy:new()
  Enemy.super.new(self, image_file, initial_x, initial_y, initial_speed)
end

function Enemy:update(dt)
  self.x = self.x + self.speed * dt

  if self.x < 0 then
    self.x = 0
    self.speed = -self.speed
  elseif self.x + self.width > window_width() then
    self.x = window_width() - self.width
    self.speed = -self.speed
  end
end

function Enemy:draw()
  love.graphics.draw(self.image, self.x, self.y)
end


