class Admin::EventsController < ApplicationController
  before_action :set_events
  before_action :set_event, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
      @event = Event.new
    end

    def create
      @event = Event.new(event_params)

      if @event.save
        redirect_to admin_events_url, :notice => "event successfully created"
      else
        redirect_to admin_events_url, :alert => "Please fill in all required fields"
      end
    end

    def update
      if @event.update_attributes(event_params)
        redirect_to admin_event_url, :notice => "event successfully updated"
      else
        redirect_to admin_events_url, :alert => "Please fill in all required fields"
      end
    end

    def destroy
        @event.destroy
        redirect_to admin_events_url, :notice => "event has been deleted"
    end

    private

    def set_events
      @events = Event.all
    end

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :location
      )
    end
  end
