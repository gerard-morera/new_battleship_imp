class ShotRecorder

	def initialize
		@hits = []
	end

	def record_hit x, y
		hits << [x, y]
	end

	def show_hits
		hits.dup
	end

	private

	attr_reader :hits

end