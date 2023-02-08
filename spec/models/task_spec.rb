require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'has a title, description, due date, estimated time and status' do
    task = build(:task, description: 'Test')
    expect("#{task.title}, #{task.due_date} - #{task.description} - #{task.estimated_time} - #{task.status}").to eq('Task1, 2023-03-07 - Test - 1 - 1')
  end
end
