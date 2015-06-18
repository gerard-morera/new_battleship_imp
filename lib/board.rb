class Board

	attr_reader :ships

	def initialize
		@ships = []
	end

	def place ship
		ships << ship
	end

  def hit x, y
    ships.any? { |ship| ship.hit x, y }
  end

end
