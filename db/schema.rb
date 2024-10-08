# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_240_919_061_802) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'addresses', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'city'
    t.string 'state'
    t.string 'country'
    t.integer 'pin_code'
    t.string 'address'
    t.bigint 'employee_id', null: false
    t.index ['employee_id'], name: 'index_addresses_on_employee_id'
  end

  create_table 'assignments', force: :cascade do |t|
    t.bigint 'project_id', null: false
    t.bigint 'employee_id', null: false
    t.date 'start_date'
    t.date 'end_date'
    t.string 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_assignments_on_employee_id'
    t.index ['project_id'], name: 'index_assignments_on_project_id'
  end

  create_table 'daily_statuses', force: :cascade do |t|
    t.bigint 'employee_id', null: false
    t.time 'total_hours'
    t.string 'discription'
    t.date 'date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_daily_statuses_on_employee_id'
  end

  create_table 'departments', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'jti', null: false
    t.string 'first_name'
    t.string 'last_name'
    t.bigint 'department_id'
    t.index ['department_id'], name: 'index_employees_on_department_id'
    t.index ['email'], name: 'index_employees_on_email', unique: true
    t.index ['jti'], name: 'index_employees_on_jti', unique: true
    t.index ['reset_password_token'], name: 'index_employees_on_reset_password_token', unique: true
  end

  create_table 'leaves', force: :cascade do |t|
    t.bigint 'employee_id', null: false
    t.date 'start_date'
    t.date 'end_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'leave_type'
    t.index ['employee_id'], name: 'index_leaves_on_employee_id'
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.bigint 'employee_id', null: false
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_roles_on_employee_id'
  end

  create_table 'salaries', force: :cascade do |t|
    t.bigint 'employee_id', null: false
    t.date 'date'
    t.integer 'amount'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_salaries_on_employee_id'
  end

  add_foreign_key 'addresses', 'employees'
  add_foreign_key 'assignments', 'employees'
  add_foreign_key 'assignments', 'projects'
  add_foreign_key 'daily_statuses', 'employees'
  add_foreign_key 'employees', 'departments'
  add_foreign_key 'leaves', 'employees'
  add_foreign_key 'roles', 'employees'
  add_foreign_key 'salaries', 'employees'
end
