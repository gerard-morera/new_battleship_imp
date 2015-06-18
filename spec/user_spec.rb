require 'user'

describe User do
	
	let( :board ) { double :board, :place => true }
	subject { User.new board }

	describe "#alive?" do

		context "when alive" do
			it "reports is alive" do
				expect( subject.alive? ).to eq true
			end

		end

		context "when told not alive" do
			it "reports is dead" do
				subject.alive = false
				expect( subject.alive? ).to eq false
			end
		end

	end

	describe "#place_ships" do 

		it "sends the ship to the board" do 
			expect( board ).to receive :place
			subject.place double :ship
		end

	end

end
