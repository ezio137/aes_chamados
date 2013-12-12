class WorkOrder < ActiveRecord::Base
  belongs_to :priority
  belongs_to :status
  belongs_to :assignment_to_person, :class_name => :person
  belongs_to :customer, :class_name => :person
  belongs_to :approval_result
  belongs_to :closure_code
  belongs_to :requestor, :class_name => :person
  belongs_to :service_call
end
