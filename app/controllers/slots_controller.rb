class SlotsController < ApplicationController

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)

    # if @slot.save

    # else

    # end
  end

  private

    def slot_params
      params.require(:slot).permit(:start_date, :start_time, :duration)
    end
end