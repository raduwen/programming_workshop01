
require "dxruby"

player = Image.load("player.png")
# playerの座標
player_x = 0
player_y = 0
# playerの移動速度
player_v = 2

Window.loop do
  # カーソルキーの入力があったら移動させる
  if Input.padDown? P_LEFT
    player_x -= player_v
  elsif Input.padDown? P_RIGHT
    player_x += player_v
  elsif Input.padDown? P_UP
    player_y -= player_v
  elsif Input.padDown? P_DOWN
    player_y += player_v
  end

  Window.draw(player_x, player_y, player)
end

