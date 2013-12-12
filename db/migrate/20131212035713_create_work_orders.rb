class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.references :service_call, index: true
      t.datetime :registration_created
      t.string :description
      t.references :priority, index: true
      t.references :status, index: true
      t.references :assignment_to_person, index: true
      t.references :customer, index: true
      t.references :approval_result, index: true
      t.text :information_log
      t.text :persons_modify_ticket_log
      t.text :last_person_to_modify_ticket
      t.datetime :assignment_to_person_time
      t.datetime :assignment_to_workgroup_time
      t.datetime :actual_finish
      t.integer :approvers_required
      t.references :closure_code, index: true
      t.datetime :deadline
      t.references :requestor, index: true

      t.timestamps
    end
  end
end
