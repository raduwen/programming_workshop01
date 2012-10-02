
require "dxruby"

Input.mouseEnable = false

player = Sprite.new(0, 0, Image.load("player.png"))
enemy = Sprite.new(rand(Window.width), rand(Window.height), Image.load("enemy.png"))

Window.loop do
  player.x = Input.mousePosX - player.image.width/2
  player.y = Input.mousePosY - player.image.height/2

  if Sprite.check(player, enemy)
    enemy.visible = false
  else
    enemy.visible = true
  end

  Sprite.draw([player, enemy])
end

