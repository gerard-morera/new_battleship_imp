class Ship
  attr_reader :position, :shot_recorder

  def initialize x, y, shot_recorder
    @position 		 = [x, y]
    @shot_recorder = shot_recorder
  end

  def hit x, y
  	shot_recorder.record_hit x, y if position == [x, y]
  end

end
