require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'has title, description, due date and status attributes' do
    project = build(:project, description: 'Test')
    expect("#{project.title}, #{project.due_date} - #{project.description} - #{project.status}").to eq('Project1, 2023-04-07 - Test - 1')
  end

  it 'is not valid without a title' do
    user = create(:user)
    project = Project.new(title: nil)
    project.user = user
    expect(project).to_not be_valid
  end

  it 'is not valid without a user' do
    project = Project.new(title: 'test')
    expect(project).to_not be_valid
  end

  it 'is valid with valid attributes' do
    user = create(:user)
    project = Project.new(title: 'test')
    project.user = user
    expect(project).to be_valid
  end
end
