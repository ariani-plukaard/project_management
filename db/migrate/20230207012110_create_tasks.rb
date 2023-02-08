class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :due_date
      t.text :description
      t.integer :estimated_time
      t.integer :status

      t.timestamps
    end
  end
end
