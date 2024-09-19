class CreateDailyStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_statuses do |t|
      t.references :employee, null: false, foreign_key: true
      t.time :total_hours
      t.string :discription
      t.date :date

      t.timestamps
    end
  end
end
