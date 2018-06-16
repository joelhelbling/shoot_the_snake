function love.load()
  Object = require "lib.classic"
  require "lib.image_entity"
  require "app.player"
  require "app.enemy"
  require "app.bullet"
  require "app.bullets"

  player = Player()
  enemy = Enemy()
  bullets = Bullets()
end

function love.update(dt)
  player:update(dt)
  enemy:update(dt)
  bullets:update(dt)
end

function love.draw()
  player:draw()
  enemy:draw()
  bullets:draw()
end

function love.keypressed(key)
  player:keyPressed(key)
end

function window_width()
  return love.graphics.getWidth()
end
