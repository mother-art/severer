class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :level, :integer, null: false, default: 0
  end

  def down
    change_column :users, :level, :integer, null: true
  end
end
