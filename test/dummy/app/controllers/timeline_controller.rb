class TimelineController < ApplicationController
  def show
    render :text => timeline_autoload_data
  end
end
