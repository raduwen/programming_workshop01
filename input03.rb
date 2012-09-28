
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

  player_x = 0 if player_x < 0
  player_y = 0 if player_y < 0
  player_x = Window.width - player.width if player_x > Window.width - player.width
  player_y = Window.height - player.height if player_y > Window.height - player.height

  Window.draw(player_x, player_y, player)
end

