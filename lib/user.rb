class User

	attr_accessor :alive

	def initialize board
		@alive = true
		@board = board
	end

	def alive?
		alive
	end

	def place ship
    board.place ship
	end

  private

	attr_reader :board

end
