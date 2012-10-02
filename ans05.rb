
require "dxruby"

Input.mouseEnable = false

player = Sprite.new(0, 0, Image.load("player.png"))
enemies = []

100.times do
  enemies << Sprite.new(rand(Window.width), rand(Window.height), Image.load("enemy.png"))
end

Window.loop do
  player.x = Input.mousePosX - player.image.width/2
  player.y = Input.mousePosY - player.image.height/2

  enemies.each do |enemy|
    if Sprite.check(player, enemy)
      enemy.visible = false
    else
      enemy.visible = true
    end
  end

  Sprite.draw([player, enemies])
end

