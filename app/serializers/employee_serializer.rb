class EmployeeSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :first_name, :last_name, :department_id
end
