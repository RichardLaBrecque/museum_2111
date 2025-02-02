require 'RSpec'
require './lib/patron'
require 'pry'
RSpec.describe Patron do

  it 'exists' do
    patron_1 = Patron.new("Bob", 20)
    # binding.pry
    expect(patron_1).to be_a(Patron)
  end

  it 'has a name' do
    patron_1 = Patron.new("Bob", 20)
    # binding.pry
    expect(patron_1.name).to eq("Bob")
  end

  it 'has a spending money' do
    patron_1 = Patron.new("Bob", 20)
    # binding.pry
    expect(patron_1.spending_money).to eq(20)
  end

  it 'has no interests by default' do
    patron_1 = Patron.new("Bob", 20)
    # binding.pry
    expect(patron_1.interests).to eq([])
  end

  it 'can gain new interests' do
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")
    # binding.pry
    expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
  end
end
