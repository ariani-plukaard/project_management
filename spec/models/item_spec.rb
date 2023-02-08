require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'has a title and status' do
    item = build(:item)
    expect("#{item.title}, #{item.status}").to eq('Item1, 1')
  end
end
