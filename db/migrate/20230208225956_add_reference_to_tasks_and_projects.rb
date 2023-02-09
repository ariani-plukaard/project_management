class AddReferenceToTasksAndProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :project, null: false, foreign_key: true
    add_reference :projects, :user, null: false, foreign_key: true
  end
end
