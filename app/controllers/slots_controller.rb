class SlotsController < ApplicationController

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)

    if @slot.save

    else

    end
  end

end