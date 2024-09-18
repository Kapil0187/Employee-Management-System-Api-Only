class AddColumnsToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
    remove_column :employees, :name
  end
end
