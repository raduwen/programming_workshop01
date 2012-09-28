
require "dxruby"

player = Image.load("player.png")
# playerの座標
player_x = 0
player_y = 0
# playerの移動速度
player_v = 2

Window.loop do
  # カーソルキーの入力があったら移動させる
  player_x -= player_v if Input.padDown? P_LEFT
  player_x += player_v if Input.padDown? P_RIGHT
  player_y -= player_v if Input.padDown? P_UP
  player_y += player_v if Input.padDown? P_DOWN

  Window.draw(player_x, player_y, player)
end

