
require "dxruby"

player = Image.load("player.png")

Window.loop do
  # マウスの位置を表示
  p "(#{Input.mousePosX}, #{Input.mousePosY})"
  # マウスの位置に画像を表示
  Window.draw(Input.mousePosX, Input.mousePosY, player)
end

