class OrdersController < ApplicationController

def create
  service = Service.find(params[:booking][:service_id])
  order  = Order.create!(service: service, service_sku: service.sku, amount: service.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: service.sku,
      amount: service.price_cents,
      currency: 'gbp',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order)
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
  # redirect_to confirmation_booking_path(params[:booking][:service_id])

end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
