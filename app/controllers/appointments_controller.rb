class AppointmentsController < ApplicationController
  def new
  end

  def create
    @slot = Slot.find(params[:slot_id])

    @appointment = Appointment.new(mentee_id: params[:mentee_id], slot_id: @slot.id)
    if @appointment.save
      redirect_to slot_path(@slot)
      "CONFIRMED!"
    else
      @errors = @appointment.errors.full_messages
      render 'slots/show'
    end
  end
end
