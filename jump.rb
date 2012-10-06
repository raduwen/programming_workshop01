
require "dxruby"
require "./player"

GROUND_HEIGHT = 64
G = 0.3

background_image = Image.load("bg.png")

ken = Player.new
ken.load_images({
  stand: ['ken_stand_000.png', 'ken_stand_001.png'],
  walk: ['ken_walk_000.png', 'ken_walk_001.png', 'ken_walk_002.png', 'ken_walk_003.png']
})
ken.x = (Window.width - ken.width) / 2
ken.y = Window.height - ken.height - GROUND_HEIGHT

ken.default_type = :stand
ken.addAnimation(:stand) do |count, count_max|
  ken.frame = count / (count_max / 2)
end

ken.addAnimation(:walk) do |count, count_max|
  if Input.padDown?(P_LEFT)
    ken.x -= ken.vx
  else
    ken.x += ken.vx
  end
  if count < count_max / 2
    ken.frame = count / (count_max / 4)
  else
    ken.frame = 4 - count / (count_max / 4)
  end
end

Window.loop do
  if Input.padDown?(P_LEFT) or Input.padDown?(P_RIGHT)
    ken.current_type = :walk
  end
  # Jump
  if ken.jump_flag == false and Input.padDown?(P_BUTTON0)
    ken.jump_flag = true
    ken.vy = -1 * ken.jump_power
  end
  if ken.jump_flag == true
    ken.y += ken.vy
    ken.vy += G
    if ken.y > Window.height - ken.height - GROUND_HEIGHT
      ken.jump_flag = false
    end
  end

  Sprite.update(ken)

  Window.draw(0, 0, background_image)
  Sprite.draw(ken)
end

