class AddEmployerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employer, :boolean
    change_column_null :users, :employer, false
    change_column_default :users, :employer, false
  end
end
