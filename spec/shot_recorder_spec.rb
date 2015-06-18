require 'shot_recorder'

describe ShotRecorder do

	subject { ShotRecorder.new }
  
	it "records the coordinates of a successful strike" do
		subject.record_hit 1,2
    expect( subject.show_hits ).to eq [[1, 2]] 
	end
	
end

