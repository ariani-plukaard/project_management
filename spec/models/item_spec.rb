require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'has title and status attributes' do
    item = build(:item)
    expect("#{item.title}, #{item.status}").to eq('Item1, 1')
  end

  it 'is not valid without a title' do
    user = create(:user)
    project = create(:project, user_id: user.id)
    task = create(:task, project_id: project.id)
    item = Item.new(title: nil)
    item.task = task
    expect(item).to_not be_valid
  end

  it 'is valid with valid attributes' do
    user = create(:user)
    project = create(:project, user_id: user.id)
    task = create(:task, project_id: project.id)
    item = Item.new(title: 'test')
    item.task = task
    expect(item).to be_valid
  end
end
