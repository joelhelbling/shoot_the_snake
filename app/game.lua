Game = Object:extend()

function Game:new()
  require "app.enemy"
  require "app.bullet"
  require "app.bullets"
  require "app.player"

  self.enemy = Enemy()
  self.bullets = Bullets(self.enemy)
  self.player = Player(self.bullets)

  self.entities = {
    self.player,
    self.enemy,
    self.bullets
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
