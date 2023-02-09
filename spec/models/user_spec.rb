require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has name, email and phone number attributes' do
    user = build(:user)
    expect("#{user.full_name}, #{user.email}, #{user.phone_number}").to eq('User1, user1@ymail.com, +61 123 456 789')
  end

  it 'is not valid without a full name' do
    user = build(:user, full_name: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid without an email' do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid with an email that is already taken' do
    create(:user)
    user = build(:user)
    expect(user).to_not be_valid
  end

  it 'is valid with valid attributes' do
    user = build(:user)
    expect(user).to be_valid
  end
end
