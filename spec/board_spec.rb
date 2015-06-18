require 'board'

describe Board do

  let( :ship ) { double :ship, :hit => true, :hit? => true, :position => [ 1, 1 ] }

  it "can have a ship" do
    subject.place ship
    expect(subject.ships.include? ship).to eq true
    expect(subject.ships.count).to eq 1
  end

  describe "hit" do

  before { subject.place double :ship, hit: false, position: [3, 6] }

    context "when given given coordinates fits with any ship coordinates" do
      it "should receive a hit until one is hit" do

        subject.place ship
        expect(subject.hit(1, 1)).to eq true
      
      end
    end

    context "when the given coordinates do not fit with any ship coordinates" do
      it "should return false" do

        expect( subject.hit( 1,1 ) ).to eq false
      
      end
    end

  end
end
