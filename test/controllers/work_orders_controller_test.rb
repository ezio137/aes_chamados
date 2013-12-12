require 'test_helper'

class WorkOrdersControllerTest < ActionController::TestCase
  setup do
    @work_order = work_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_order" do
    assert_difference('WorkOrder.count') do
      post :create, work_order: { actual_finish: @work_order.actual_finish, approval_result_id: @work_order.approval_result_id, approvers_required: @work_order.approvers_required, assignment_to_person_id: @work_order.assignment_to_person_id, assignment_to_person_time: @work_order.assignment_to_person_time, assignment_to_workgroup_time: @work_order.assignment_to_workgroup_time, closure_code_id: @work_order.closure_code_id, customer_id: @work_order.customer_id, deadline: @work_order.deadline, description: @work_order.description, id: @work_order.id, information_log: @work_order.information_log, last_person_to_modify_ticket_id: @work_order.last_person_to_modify_ticket_id, persons_modify_ticket_log: @work_order.persons_modify_ticket_log, priority_id: @work_order.priority_id, registration_created: @work_order.registration_created, requestor_id: @work_order.requestor_id, service_call_id: @work_order.service_call_id, status_id: @work_order.status_id }
    end

    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should show work_order" do
    get :show, id: @work_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_order
    assert_response :success
  end

  test "should update work_order" do
    patch :update, id: @work_order, work_order: { actual_finish: @work_order.actual_finish, approval_result_id: @work_order.approval_result_id, approvers_required: @work_order.approvers_required, assignment_to_person_id: @work_order.assignment_to_person_id, assignment_to_person_time: @work_order.assignment_to_person_time, assignment_to_workgroup_time: @work_order.assignment_to_workgroup_time, closure_code_id: @work_order.closure_code_id, customer_id: @work_order.customer_id, deadline: @work_order.deadline, description: @work_order.description, id: @work_order.id, information_log: @work_order.information_log, last_person_to_modify_ticket_id: @work_order.last_person_to_modify_ticket_id, persons_modify_ticket_log: @work_order.persons_modify_ticket_log, priority_id: @work_order.priority_id, registration_created: @work_order.registration_created, requestor_id: @work_order.requestor_id, service_call_id: @work_order.service_call_id, status_id: @work_order.status_id }
    assert_redirected_to work_order_path(assigns(:work_order))
  end

  test "should destroy work_order" do
    assert_difference('WorkOrder.count', -1) do
      delete :destroy, id: @work_order
    end

    assert_redirected_to work_orders_path
  end
end
