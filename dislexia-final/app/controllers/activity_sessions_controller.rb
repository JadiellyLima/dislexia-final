class ActivitySessionsController < ApplicationController
  before_action :set_activity_session, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /activity_sessions
  # GET /activity_sessions.json
  def index
    @activity_sessions = ActivitySession.all
  end

  # GET /activity_sessions/1
  # GET /activity_sessions/1.json
  def show
  end

  # GET /activity_sessions/new
  def new
    @activity_session = ActivitySession.new
  end

  # GET /activity_sessions/1/edit
  def edit
  end

  # POST /activity_sessions
  # POST /activity_sessions.json
  def create
    @activity_session = ActivitySession.new(activity_session_params)

    respond_to do |format|
      if @activity_session.save
        format.html { redirect_to @activity_session, notice: 'Activity session was successfully created.' }
        format.json { render :show, status: :created, location: @activity_session }
      else
        format.html { render :new }
        format.json { render json: @activity_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_sessions/1
  # PATCH/PUT /activity_sessions/1.json
  def update
    respond_to do |format|
      if @activity_session.update(activity_session_params)
        format.html { redirect_to @activity_session, notice: 'Activity session was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_session }
      else
        format.html { render :edit }
        format.json { render json: @activity_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_sessions/1
  # DELETE /activity_sessions/1.json
  def destroy
    @activity_session.destroy
    respond_to do |format|
      format.html { redirect_to activity_sessions_url, notice: 'Activity session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_session
      @activity_session = ActivitySession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_session_params
      params.require(:activity_session).permit(:session_id, :activity_id, :member_team_id, :student_id)
    end
end