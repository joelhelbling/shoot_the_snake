function love.load()
  Object = require "lib.classic"
  require "lib.image_entity"
  require "app.game"

  game = Game()
end

function love.update(dt)
  game:update(dt)
end

function love.draw()
  game:draw()
end

function love.keypressed(key)
  game.player:keyPressed(key)
end

function window_width()
  return love.graphics.getWidth()
end
