# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131212035713) do

  create_table "work_orders", force: true do |t|
    t.integer  "service_call_id"
    t.datetime "registration_created"
    t.string   "description"
    t.integer  "priority_id"
    t.integer  "status_id"
    t.integer  "assignment_to_person_id"
    t.integer  "customer_id"
    t.integer  "approval_result_id"
    t.text     "information_log"
    t.text     "persons_modify_ticket_log"
    t.text     "last_person_to_modify_ticket"
    t.datetime "assignment_to_person_time"
    t.datetime "assignment_to_workgroup_time"
    t.datetime "actual_finish"
    t.integer  "approvers_required"
    t.integer  "closure_code_id"
    t.datetime "deadline"
    t.integer  "requestor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_orders", ["approval_result_id"], name: "index_work_orders_on_approval_result_id", using: :btree
  add_index "work_orders", ["assignment_to_person_id"], name: "index_work_orders_on_assignment_to_person_id", using: :btree
  add_index "work_orders", ["closure_code_id"], name: "index_work_orders_on_closure_code_id", using: :btree
  add_index "work_orders", ["customer_id"], name: "index_work_orders_on_customer_id", using: :btree
  add_index "work_orders", ["priority_id"], name: "index_work_orders_on_priority_id", using: :btree
  add_index "work_orders", ["requestor_id"], name: "index_work_orders_on_requestor_id", using: :btree
  add_index "work_orders", ["service_call_id"], name: "index_work_orders_on_service_call_id", using: :btree
  add_index "work_orders", ["status_id"], name: "index_work_orders_on_status_id", using: :btree

end
