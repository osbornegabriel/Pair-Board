class AppointmentsController < ApplicationController

  def new
  end

  def create
    @slot = Slot.find(params[:slot_id])
    @appointment = Appointment.new(mentee_id: params[:mentee_id], slot_id: @slot.id)

    respond_to do |format|
      if @appointment.save
        # format.js { render js: @slot }
        # p "CONFIRMED!"
        format.html { redirect_to @slot }
      else
        p "UH OH"
        format.js { render js: @appointment.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end
end
