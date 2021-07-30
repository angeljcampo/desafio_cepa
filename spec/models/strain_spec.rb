require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'strain can not have the same name' do
      strain = Strain.create(name: 'Carmenere')
      expect(strain).to be_invalid
  end

  it 'should not create without name' do
    strain = Strain.create(name: "")
    expect(strain).to_not be_valid
  end
  it 'strain name cant be Merlot' do
      strain = Strain.new(name: 'Merlot')
      expect(strain).to be_invalid
  end
  it 'strain name cannot be nil' do
      strain = Strain.new(name: nil)
      expect(strain).to be_invalid
  end
end

