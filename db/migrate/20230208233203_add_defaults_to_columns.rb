class AddDefaultsToColumns < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:items, :status, 1)
    change_column_default(:tasks, :status, 1)
    change_column_default(:projects, :status, 1)
  end
end
