describe Ship do

	subject { Ship.new 1,2 }

	it "has a position when created" do
		expect( subject.position ).to eq [ 1, 2 ]
	end

end