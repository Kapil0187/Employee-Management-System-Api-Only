class RemoveEmployeesFromAddresses < ActiveRecord::Migration[7.1]
  def change
    remove_reference :addresses, :employees, null: false, foreign_key: true
  end
end
