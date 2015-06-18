require 'ship'

describe Ship do

	subject { Ship.new 1,2, shotrecorder }
	let( :shotrecorder ) { double :shotrecorder, record_hit: nil }

	it "has a position when created" do
		expect( subject.position ).to eq [ 1, 2 ]
	end

	it "calls shotrecorder when hit" do 
		expect( shotrecorder ).to receive( :record_hit )
		subject.hit 1, 2
	end


end
