require 'point'

describe Point do

  it { is_expected.to respond_to( :x  ) }
  it { is_expected.to respond_to( :y  ) }
  it { is_expected.to respond_to( :x= ) }
  it { is_expected.to respond_to( :y= ) }

  it "can set two coordinates" do
    subject.x = 1
    expect(subject.x).to eq 1
  end

end
