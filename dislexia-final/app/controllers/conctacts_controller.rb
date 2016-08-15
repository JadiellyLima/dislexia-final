class ConctactsController < ApplicationController
  before_action :set_conctact, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new,:create]
  # GET /conctacts
  # GET /conctacts.json
  def index
    @conctacts = Conctact.all
  end

  # GET /conctacts/1
  # GET /conctacts/1.json
  def show
  end

  # GET /conctacts/new
  def new
    @conctact = Conctact.new
  end

  # GET /conctacts/1/edit
  def edit
  end

  # POST /conctacts
  # POST /conctacts.json
  def create
    @conctact = Conctact.new(conctact_params)

    respond_to do |format|
      if @conctact.save
        format.html { redirect_to new_conctact_path, notice: 'Mensagem enviada.' }
        format.json { render :show, status: :created, location: @conctact }
      else
        format.html { render :new }
        format.json { render json: @conctact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conctacts/1
  # PATCH/PUT /conctacts/1.json
  def update
    respond_to do |format|
      if @conctact.update(conctact_params)
        format.html { redirect_to @conctact, notice: 'Conctact was successfully updated.' }
        format.json { render :show, status: :ok, location: @conctact }
      else
        format.html { render :edit }
        format.json { render json: @conctact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conctacts/1
  # DELETE /conctacts/1.json
  def destroy
    @conctact.destroy
    respond_to do |format|
      format.html { redirect_to conctacts_url, notice: 'Conctact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conctact
      @conctact = Conctact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conctact_params
      params.require(:conctact).permit(:name, :email, :msg)
    end
end
