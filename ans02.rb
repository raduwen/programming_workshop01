# coding: utf-8

require 'dxruby'

player = Image.load "player.png"
enemy = Image.load "enemy.png"

Window.loop do
  Window.draw 288, 400, player
  Window.draw 288, 0, enemy
end

