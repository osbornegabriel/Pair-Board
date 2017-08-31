class SlotsController < ApplicationController

  def index
  	# sort these in chronological order
  	@slots = Slot.all
    @slots = @slots.order(:start_time)

  	# get top 5 sorted by number of appointments
  	 @top_mentors = User.all
  	 @top_mentors = @top_mentors.sort { |a,b| a.slots.inject(0){|sum, slot| sum + slot.duration} <=> b.slots.inject(0){|sum, slot| sum + slot.duration}}
  	 @top_mentors = @top_mentors.reverse.first(5)

	#user.slots.inject(0){|sum, slot| sum + slot.duration}
  	 @top_mentees = User.all
  	 @top_mentees = @top_mentees.sort { |a,b| a.appointments.count <=> b.appointments.count }
  	 @top_mentees = @top_mentees.reverse.first(5)
  end

  def show
  end

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