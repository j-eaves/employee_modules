require "./reportable_module.rb"
require "./employee_class.rb"
module Actualize
  #An intern can do everything that an ployee can do and can also send a report
  class Intern < Actualize::Employee
    include EmailReportable
  end
end