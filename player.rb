class Player < Sprite
  attr_accessor :vx, :vy
  attr_accessor :jump_power, :jump_flag
  attr_reader :images
  attr_reader :animations
  attr_reader :count
  attr_accessor :count_max, :frame
  attr_accessor :current_type, :default_type

  def initialize
    @vx = 2
    @vy = 0
    @jump_power = 7
    @jump_flag = false
    @images = {}
    @animations = {}
    @default_type = nil
    @current_type = nil
    @frame = 0
    @count = 0
    @count_max = 30
  end

  def load_images(hash)
    hash.each do |type, filenames|
      @images[type] = []
      filenames.each do |filename|
        @images[type] << Image.load(filename)
      end
    end
    self.image = @images.values.first.first
  end

  def addAnimation(type, &block)
    if @animations[type] == nil
      @animations[type] = block
    else
      raise "#{type} type already added."
    end
  end
  alias :add_animation :addAnimation

  def update
    raise "default_type is nil." if @current_type.nil?
    @animations[@current_type].call(@count, @count_max)
    self.image = @images[@current_type][@frame]
    @count += 1
    @count = 0 if @count_max <= @count
    @current_type = @default_type
  end

  def width ; self.image.width ; end
  def height ; self.image.height ; end
  def default_type=(v) ; @current_type = v ; @default_type = v ; end
end
