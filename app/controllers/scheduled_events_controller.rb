class ScheduledEventsController < ApplicationController
  before_action :find_scheduled_event, only: [:show,:edit,:update,:destroy]

    def index
      @scheduled_events = ScheduledEvent.all

    end

    def show

    end

    def new
      @scheduled_event = ScheduledEvent.new

    end

    def create
      @scheduled_event = ScheduledEvent.new(scheduled_event_params)
      if @scheduled_event.save
        redirect_to  @scheduled_event
      else
        render :new
      end
    end

    def edit

    end

    def update
      if @scheduled_event.update scheduled_event_params
        redirect_to @scheduled_event
      else
        render :edit
      end
    end

    def destroy
      @scheduled_event.destroy
      redirect_to scheduled_events_path
    end

    private

    def find_scheduled_event
      @scheduled_event = ScheduledEvent.find(params[:id])
    end

    def scheduled_event_params
      params.require(:scheduled_event).permit(:event_id, :date, :hour_init, :hour_finish)
    end
end
