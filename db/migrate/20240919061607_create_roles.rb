class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
