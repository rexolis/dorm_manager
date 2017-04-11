class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]

  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.all
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new
  end

  # GET /applicants/1/edit
  def edit
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)

    respond_to do |format|
      if @applicant.save
        # ApplicantMailer.sample_email(@applicant).deliver_later
        format.html { redirect_to @applicant, notice: 'Applicant was successfully created. check email for administrator\'s approval.' }
        format.json { render :show, status: :created, location: @applicant }
      else
        format.html { render :new }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicants/1
  # PATCH/PUT /applicants/1.json
  def update
    respond_to do |format|
      if @applicant.update(applicant_params)
        format.html { redirect_to @applicant, notice: 'Applicant was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant }
      else
        format.html { render :edit }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant.destroy
    respond_to do |format|
      format.html { redirect_to applicants_url, notice: 'Applicant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def change
    applicant = Applicant.find(params[:id])
    if !applicant.status
      redirect_to signup_path(:param0 => applicant, :param1 => applicant.name, :param2 => applicant.family_name,  :param3 => applicant.student_number, :param4 => applicant.email)
    else
      redirect_to applicants_url
    end
  end
  
  def approve
    applicant = Applicant.find(params[:id])
    if !applicant.status
      applicant.status = !applicant.status
      applicant.save
      ApplicantMailer.sample_email(applicant).deliver_now
    end
    redirect_to applicants_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_params
      params.require(:applicant).permit(:name, :family_name, :middle_name, :email, :student_number, :course_year, :home_address, :status)
    end
end
