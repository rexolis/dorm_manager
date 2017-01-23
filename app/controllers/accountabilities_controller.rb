class AccountabilitiesController < ApplicationController
  before_action :set_accountability, only: [:show, :edit, :update, :destroy]

  # GET /accountabilities
  # GET /accountabilities.json
  def index
    @user = User.all
    @accountabilities = Accountability.all
  end

  # GET /accountabilities/1
  # GET /accountabilities/1.json
  def show
  end

  # GET /accountabilities/new
  def new
    @accountability = Accountability.new
    @accountability.user_id = params[:user_id].to_i
  end

  # GET /accountabilities/1/edit
  def edit
  end

  # POST /accountabilities
  # POST /accountabilities.json
  def create
    @accountability = Accountability.new(accountability_params)
    
    respond_to do |format|
      if @accountability.save
        format.html { redirect_to users_path, notice: 'Accountability was successfully created.' }
        format.json { render :show, status: :created, location: @accountability }
      else
        format.html { render :new }
        format.json { render json: @accountability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountabilities/1
  # PATCH/PUT /accountabilities/1.json
  def update
    respond_to do |format|
      if @accountability.update(accountability_params)
        format.html { redirect_to @accountability, notice: 'Accountability was successfully updated.' }
        format.json { render :show, status: :ok, location: @accountability }
      else
        format.html { render :edit }
        format.json { render json: @accountability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountabilities/1
  # DELETE /accountabilities/1.json
  def destroy
    @accountability.destroy
    respond_to do |format|
      format.html { redirect_to accountabilities_url, notice: 'Accountability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountability
      @accountability = Accountability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accountability_params
      params.require(:accountability).permit(:classification, :description, :payment, :user_id)
    end
end
