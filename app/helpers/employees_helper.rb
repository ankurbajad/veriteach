module EmployeesHelper
  def build_employee(employee)
    employee.companies.build if employee.companies.empty?
    employee
  end
end
