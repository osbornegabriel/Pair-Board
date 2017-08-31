class SlotsController < ApplicationController

  def index
  	@slots = Slot.all
  end

  def new
  end

  def show
  end

end