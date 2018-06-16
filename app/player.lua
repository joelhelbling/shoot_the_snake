Player = ImageEntity:extend()

local image_file = "assets/panda.png"
local initial_x = 300
local initial_y = 20
local initial_speed = 500

function Player:new()
  Player.super.new(self, image_file, initial_x, initial_y, initial_speed)
end

function Player:update(dt)
  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * dt
  elseif love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
  end

  if self.x < 0 then
    self.x = 0
  elseif self.x + self.width > window_width() then
    self.x = window_width() - self.width
  end
end

function Player:draw()
  love.graphics.draw(self.image, self.x, self.y)
end

function Player:keyPressed(key)
  if key == "space" then
    bullets:fireNewBulletFrom(self)
  end
end
