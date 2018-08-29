class Api::SpeakersController < ApplicationController
  def single_view_action
    @speaker = Speaker.find_by(id:6)
    render "single_view.json.jbuilder"
  end
end
