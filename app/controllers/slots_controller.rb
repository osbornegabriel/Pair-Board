class SlotsController < ApplicationController

  def index
  	# sort these in chronological order
  	@slots = Slot.all

  	# get top 5 sorted by number of appointments
  	 @top_mentors = User.all
  	 @top_mentors = @top_mentors.sort { |a,b| a.slots.inject(0){|sum, slot| sum + slot.duration} <=> b.slots.inject(0){|sum, slot| sum + slot.duration}}
  	 @top_mentors = @top_mentors.reverse.first(5)

	#user.slots.inject(0){|sum, slot| sum + slot.duration}
  	 @top_mentees = User.all
  	 @top_mentees = @top_mentees.sort { |a,b| a.appointments.count <=> b.appointments.count }
  	 @top_mentees = @top_mentees.reverse.first(5)
  end

  def new
  end

  def show
  end

end