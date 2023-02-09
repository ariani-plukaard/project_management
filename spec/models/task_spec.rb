require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'has title, description, due date, estimated time and status attributes' do
    task = build(:task, description: 'Test')
    expect("#{task.title}, #{task.due_date} - #{task.description} - #{task.estimated_time} - #{task.status}").to eq('Task1, 2023-03-07 - Test - 1 - 1')
  end

  it 'is not valid without a title' do
    user = create(:user)
    project = create(:project, user_id: user.id)
    task = Task.new(title: nil)
    task.project = project
    expect(task).to_not be_valid
  end

  it 'is not valid without a project' do
    task = Task.new(title: 'test')
    expect(task).to_not be_valid
  end

  it 'is valid with valid attributes' do
    user = create(:user)
    project = create(:project, user_id: user.id)
    task = Task.new(title: 'test')
    task.project = project
    expect(task).to be_valid
  end
end
