require 'board'

describe Board do

  it "can have a ship" do
    ship = double :ship
    subject.place ship
    expect(subject.ships.include? ship).to eq true
    expect(subject.ships.count).to eq 1
  end

  it "can receibe a hit on a ship" do
  	ship = double :ship, :hit => nil, :position => [ 1, 1 ]
  	subject.place ship
  	expect( ship ).to receive( :hit )
  	subject.hit 1, 1
  end


end
