require "dxruby"

player = Image.load("player.png") # player.pngを読み込んでplayer変数に代入

Window.loop do
  Window.draw(0, 0, player) # playerを(0, 0)に描画
end

