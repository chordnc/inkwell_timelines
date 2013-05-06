class TimelineController < ApplicationController
  def show
    @options = inkwell_timelines_get_params(request.body, :for_user => current_user)

    #Here you can check came from js options. For exapmle:
    user = User.find @options[:user_id]
    raise "current user has no permissions to see #{user.nick} timeline" unless current_user.can_see_timeline user

    render :layout => false
  end
end
