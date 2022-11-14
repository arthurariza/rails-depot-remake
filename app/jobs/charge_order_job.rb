# frozen_string_literal: true

class ChargeOrderJob < ApplicationJob
  queue_as :default

  def perform(order_id, pay_type_params)
    order = Order.find(order_id)

    order.charge!(pay_type_params)
  end
end
