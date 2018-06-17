Bullets = Object:extend()

function Bullets:new(enemy)
  self.table = {}
  self.enemy = enemy
end

function Bullets:update(dt)
  for i,v in ipairs(self.table) do
    v:update(dt)
    v:checkCollision(self.enemy)

    if v.dead then
      table.remove(self.table, i)
    end
  end
end

function Bullets:draw()
  for i,v in ipairs(self.table) do
    v:draw()
  end
end

function Bullets:fireNewBulletFrom(assailant)
  table.insert(
    self.table,
    Bullet(assailant:x_center(), assailant:bottom())
  )
end
