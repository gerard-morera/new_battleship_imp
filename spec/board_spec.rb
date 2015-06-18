require 'board'

describe Board do

  let( :ship ) { double :ship, :hit => true, :hit? => true, :position => [ 1, 1 ] }

  it "can have a ship" do
    subject.place ship
    expect(subject.ships.include? ship).to eq true
    expect(subject.ships.count).to eq 1
  end

  describe "hit" do

    context "when a ship is hit" do
      it "should receive a hit until one is hit" do
        first_ship = double :ship, hit: false, position: [3, 6]
        subject.place first_ship
        subject.place ship
        expect(subject.hit(1, 1)).to eq true
      end

      it "calls #shotrecorder when a ship is hit" do

      end
    end

  describe "#shotrecorder" do

  end


  end
end
