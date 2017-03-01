require "./reportable_module.rb"
require "./employee_class.rb"

#An intern can do everything that an ployee can do and can also send a report
class Intern < Employee
  include EmailReportable
end
