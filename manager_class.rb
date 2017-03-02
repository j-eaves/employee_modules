require "./employee_class.rb"
require "./reportable_module.rb"
module Actualize
  #Manager class - inherited from Employee class
  class Manager < Actualize::Employee
    include EmailReportable
    attr_reader :employees
    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end
    # def employees
      # return @employees
    # end
    def give_all_raises
      @employees.each do |employee|
        employee.give_annual_raise
      end
    end

    def fire_all_employees
      @employees.each do |employee|
        employee.active = false
      end
    end
  end
end