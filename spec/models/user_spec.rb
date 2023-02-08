require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a name, email and phone number' do
    user = build(:user)
    expect("#{user.full_name}, #{user.email}, #{user.phone_number}").to eq('User1, user1@ymail.com, +61 123 456 789')
  end
end
