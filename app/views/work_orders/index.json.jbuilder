json.array!(@work_orders) do |work_order|
  json.extract! work_order, :id, :priority_id, :status_id, :persons_modify_ticket_log, :registration_created, :assignment_to_person_id, :description, :customer_id, :approval_result_id, :last_person_to_modify_ticket_id, :assignment_to_person_time, :assignment_to_workgroup_time, :actual_finish, :approvers_required, :closure_code_id, :deadline, :information_log, :requestor_id, :service_call_id
  json.url work_order_url(work_order, format: :json)
end
