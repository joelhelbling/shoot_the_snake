Bullet = ImageEntity:extend()

local image_file = "assets/bullet.png"
local initial_speed = 700

function Bullet:new(initial_x, initial_y)
  Bullet.super.new(self, image_file, initial_x, initial_y, initial_speed)
  self.dead = false
end

function Bullet:update(dt)
  self.y = self.y + self.speed * dt

  if self.y > love.graphics.getHeight() then
    love.load()
  end
end

function Bullet:checkCollision(target)
  if self:isCollidingWith(target) then
    self.dead = true
    game.score = game.score + 1

    if target.speed > 0 then
      target.speed = target.speed + 50
    else
      target.speed = target.speed - 50
    end
  end
end
