require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'has a title, description, due date and status' do
    project = build(:project, description: 'Test')
    expect("#{project.title}, #{project.due_date} - #{project.description} - #{project.status}").to eq('Project1, 2023-04-07 - Test - 1')
  end
end
