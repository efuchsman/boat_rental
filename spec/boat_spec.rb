require 'rspec'
require './lib/boat.rb'

RSpec.describe Boat do
  it 'exists' do
    kayak = Boat.new(:kayak, 20)

  expect(kayak).to be_an_instance_of(Boat)
end

  it 'has readable attributes' do
    kayak = Boat.new(:kayak, 20)

    expect(kayak.type).to eq(:kayak)
    expect(kayak.price_per_hour).to eq(20)
  end

  it "can be rented" do
    kayak = Boat.new(:kayak, 20)

    expect(kayak.hours_rented).to eq(0)
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour


    expect(kayak.hours_rented).to eq(3)
  end

end
