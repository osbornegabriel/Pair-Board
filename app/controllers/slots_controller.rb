class SlotsController < ApplicationController

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    @slot.mentor = current_user
    if @slot.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

    def slot_params
      params.require(:slot).permit(:date, :start_time, :duration_string)
    end
end