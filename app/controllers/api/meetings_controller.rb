class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
    @meetings = @meetings.where(remote: true)
    render "index.json.jbuilder"
  end

  def show
    @meeting = Meeting.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @meeting = Meeting.new(title: params[:title],
                           agenda: params[:agenda],
                           location: params[:location],
                           remote: params[:remote],
                           speaker_id: params[:speaker_id]
                            )
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @meeting.errors.full_messages}, status: :unprocessable_entity
    end


  end


  def update
    @meeting = Meeting.find(params[:id])
    @meeting.title = params[:title] || @meeting.title
    @meeting.agenda = params[:agenda] || @meeting.agenda
    @meeting.location = params[:location] || @meeting.location
    @meeting.remote = params[:remote] || @meeting.remote
    @meeting.speaker_id = params[:speaker_id] || @meeting.speaker_id

    if @meeting.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @meeting.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    render json: {message: "Entry successfully destroyed"}
  end
end

