require 'rails_helper'

RSpec.describe Customer, type: :model do

  let(:customer) { create(:customer) }

  it 'invalid names' do
    customer.first_name, customer.last_name = nil, nil

    expect(customer.save).to eq(false)
  end

  it 'valid names' do
    expect(customer.valid?).to be true
  end
end
