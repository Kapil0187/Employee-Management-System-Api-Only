class ChangeColumnNameFromLeaves < ActiveRecord::Migration[7.1]
  def change
    remove_column :leaves, :type
    add_column :leaves, :leave_type, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
