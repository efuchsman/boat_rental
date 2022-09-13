require './lib/boat.rb'
require './lib/renter.rb'
require './lib/dock.rb'

RSpec.describe Dock do
  it 'exists' do
    dock = Dock.new("The Rowing Dock", 3)

    expect(dock).to be_an_instance_of(Dock)
  end

  it 'has readable attributes' do
    dock = Dock.new("The Rowing Dock", 3)

    expect(dock.name).to eq("The Rowing Dock")
    expect(dock.max_rental_time).to eq(3)
  end

end
