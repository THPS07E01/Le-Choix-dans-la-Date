class ChargesController < ApplicationController

	def new
		$event_id = params[:format]
	  @amount = Event.find($event_id).price
	  @title = Event.find($event_id).title
	end

	def create

		@amount = Event.find($event_id).price


	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount * 100,
	    :description => 'Rails Stripe customer',
	    :currency    => 'eur'
	  )

	  if Stripe::CardError != true
  		Attendance.create(attendee_id: current_user.id, event_id: $event_id, stripe_customer_id: params[:stripeToken])
  		flash[:success] = "Ta participation est bien enregistrée !"
  		redirect_to events_path
		end

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end
end
