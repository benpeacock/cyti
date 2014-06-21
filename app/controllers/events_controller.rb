class EventsController < ApplicationController

  before_action set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @event, notice: 'Answer was successfully created'
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Answer was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def edit
  end

  def destroy
    @event.destroy
  end

  private

  def set_event
      @event = Event.find(params[:id])
    end

  def event_params
      params.require(:event).permit(:address, :endDate, :imageThumbUrl, :shortDescription, :title)
  end
  
end
