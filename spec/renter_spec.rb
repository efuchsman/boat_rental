require 'rspec'
require './lib/boat.rb'
require './lib/renter.rb'

RSpec.describe Renter do
  it 'exists' do
    renter = Renter.new("Patrick Star", "4242424242424242")

  expect(renter).to be_an_instance_of(Renter)
  end

  it 'has readable attributes' do
    renter = Renter.new("Patrick Star", "4242424242424242")

    expect(renter.name).to eq("Patrick Star")
    expect(renter.credit_card_number).to eq("4242424242424242")
  end
end
