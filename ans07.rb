# coding: utf-8

require "dxruby"

font = Font.new(72, "ＭＳ Ｐゴシック", {weight: 800, italic: false})
width = font.getWidth("Hello")

Window.loop do
  Window.drawFontEx(
    (Window.width-width) / 2,
    (Window.height-font.size) / 2,
    "Hello",
    font,
    { color: [255, 255, 0], edge: true, shadow: true }
  )
end

