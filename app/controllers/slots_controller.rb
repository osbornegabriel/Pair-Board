class SlotsController < ApplicationController

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    @slot.mentor = current_user
    if @slot.save
      @slot.number_of_slots.times do |i|
        Appointment.create(slot: @slot, start_time: (@slot.start_time + (i * 180)))
      end
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

    def slot_params
      params.require(:slot).permit(:date, :start_time, :duration)
    end
end