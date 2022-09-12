require 'rspec'
require './lib/boat.rb'

RSpec.describe Boat do
  it 'exists' do
    kayak = Boat.new(:kayak, 20)

  expect(kayak).to be_an_instance_of(Boat)
end


end
