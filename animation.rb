
require "dxruby"
require "./player.rb"

GROUND_HEIGHT = 64

ken = Player.new
ken.load_images({
  stand: ['ken_stand_000.png', 'ken_stand_001.png'],
})
ken.x = (Window.width - ken.width) / 2
ken.y = Window.height - ken.height - GROUND_HEIGHT

ken.default_type = :stand
ken.addAnimation(:stand) do |count, count_max|
  ken.frame = count / (count_max / 2)
end

Window.loop do
  Sprite.update(ken)

  Sprite.draw(ken)
end

