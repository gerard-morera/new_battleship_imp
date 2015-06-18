require 'board'

describe Board do

  it "can have a ship" do
    ship = double :ship
    subject.place ship
    expect(subject.ships.include? ship).to_be true
    expect(subject.ships.count).to eq 1
  end

end
