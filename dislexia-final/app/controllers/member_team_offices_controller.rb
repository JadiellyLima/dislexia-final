class MemberTeamOfficesController < ApplicationController
  before_action :set_member_team_office, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /member_team_offices
  # GET /member_team_offices.json
  def index
    @member_team_offices = MemberTeamOffice.all
  end

  # GET /member_team_offices/1
  # GET /member_team_offices/1.json
  def show
  end

  # GET /member_team_offices/new
  def new
    @member_team_office = MemberTeamOffice.new
  end

  # GET /member_team_offices/1/edit
  def edit
  end

  # POST /member_team_offices
  # POST /member_team_offices.json
  def create
    @member_team_office = MemberTeamOffice.new(member_team_office_params)

    respond_to do |format|
      if @member_team_office.save
        format.html { redirect_to @member_team_office, notice: 'Member team office was successfully created.' }
        format.json { render :show, status: :created, location: @member_team_office }
      else
        format.html { render :new }
        format.json { render json: @member_team_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_team_offices/1
  # PATCH/PUT /member_team_offices/1.json
  def update
    respond_to do |format|
      if @member_team_office.update(member_team_office_params)
        format.html { redirect_to @member_team_office, notice: 'Member team office was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_team_office }
      else
        format.html { render :edit }
        format.json { render json: @member_team_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_team_offices/1
  # DELETE /member_team_offices/1.json
  def destroy
    @member_team_office.destroy
    respond_to do |format|
      format.html { redirect_to member_team_offices_url, notice: 'Member team office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_team_office
      @member_team_office = MemberTeamOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_team_office_params
      params.require(:member_team_office).permit(:function)
    end
end
