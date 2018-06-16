Game = Object:extend()

function Game:new()
  require "app.enemy"
  require "app.bullet"
  require "app.bullets"
  require "app.player"

  local enemy = Enemy()
  local bullets = Bullets(enemy)
  self.player = Player(bullets)

  self.entities = {
    self.player,
    enemy,
    bullets
  }
end

function Game:update(dt)
  for i,entity in ipairs(self.entities) do
    entity:update(dt)
  end
end

function Game:draw()
  for i,entity in ipairs(self.entities) do
    entity:draw()
  end
end
