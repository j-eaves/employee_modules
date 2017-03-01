require "./employee_class.rb"
require "./manager_class.rb"
require "./intern_class.rb"
require "./reportable_module.rb"

intern1 = Intern.new(first_name: "Bob", last_name: "Earl", salary: 0, active: true)
p intern1.first_name
intern1.send_report
#What we learn:
employee1 = Employee.new({:first_name => "Manila", :last_name => "Campos", :salary => 80000, :active => true})
#Current ruby best practice
employee2 = Employee.new(first_name: "Ben", last_name: "Franklin", salary: 70000, active: true)
#p employee1.full_name
#p employee2.full_name
manager1 = Manager.new(first_name: "Jon", last_name: "Eaves", salary: 90000, active: true, employees: [employee1, employee2])
#p manager1.full_name
#p manager1.class
manager1.send_report
p manager1.employees[0].salary
manager1.give_all_raises
p manager1.employees[0].salary
p manager1.employees[0].active
manager1.fire_all_employees
p manager1.employees[0].active