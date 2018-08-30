class Api::MeetingsController < ApplicationController
  def all_meetings_action
    @meetings = Meeting.all
    render "all_meetings.json.jbuilder"
  end
end

