class EventsController < ApplicationController
  def create
    event = Event.new event_params
    if event.save
      render json: event
    else
      render status: :bad_request, json: {errors: event.errors}
    end
  end

  private
  def event_params
    params.require('event').permit(:user_id, :product_id, :event)
  end
end