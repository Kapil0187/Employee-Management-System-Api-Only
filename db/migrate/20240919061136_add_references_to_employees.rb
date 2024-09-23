class AddReferencesToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_reference :employees, :department, null: true, foreign_key: true
  end
end
