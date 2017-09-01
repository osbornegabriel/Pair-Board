class SlotsController < ApplicationController

  def index
  	@slots = Slot.all
    @slots = @slots.order(:start_time)

  	 @top_mentors = User.all.select{|user| !user.slots.empty?}
  	 @top_mentors = @top_mentors.sort { |a,b| a.slots.inject(0){|sum, slot| sum + slot.duration_as_integer} <=> b.slots.inject(0){|sum, slot| sum + slot.duration_as_integer}}
  	 @top_mentors = @top_mentors.reverse.first(5)

  	 @top_mentees = User.all
  	 @top_mentees = @top_mentees.sort { |a,b| a.appointments_with_mentors.count <=> b.appointments_with_mentors.count }
  	 @top_mentees = @top_mentees.reverse.first(5)
  end

  def show
    @slot = Slot.find(params[:id])
  end

  def new
    @slot = Slot.new
  end

  def create
    if session[:user_id] != nil
      @slot = Slot.new(slot_params)
      @slot.mentor_id = current_user.id
      if @slot.save
        redirect_to '/'
      else
        render 'new'
      end
    end
  end

  def edit
    @slot = Slot.find(params[:id])
    render "edit"
  end

  def update
    @slot = Slot.find(params[:id])
    @slot.update(slot_params)
    if @slot.valid?
      render "show"
    else
      render "edit"
    end
  end

  def destroy
    @slot = Slot.find(params[:id])
    @slot.destroy
    redirect_to '/'
  end

  private

    def slot_params
      params.require(:slot).permit(:date, :start_time, :duration)
    end
end