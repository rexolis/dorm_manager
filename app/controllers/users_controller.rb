class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    # @users = User.where(activated: FILL_IN).paginate(page: params[:page])
    @users = User.all.paginate(page: params[:page], per_page: 5)
  end

  def show
    @user = User.find(params[:id])
    #@user = User.alphabetically
    @accountabilities = Accountability.where(user_id:params[:id].to_i)
    @permissions = Permission.where(user_id:[@user.id.to_i])
    # redirect_to root_url and return unless FILL_IN
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.age = Date.today.year - @user.birthday.year
    if @user.save
      ApplicantMailer.sample_email(@user).deliver_now
      flash[:info] = "Account created! An Email has been sent to the applicant"
      redirect_to applicants_url
    else
      render 'new'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(user_params)
      @user.age = Date.today.year - @user.birthday.year
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def user_accountability
    @accountabilities = Accountability.where(user_id:params[:id].to_i)
    @user = User.find(params[:id])
   
    render "accountability"
  end
  
  def userViolations
    @accountabilities = Accountability.where(user_id:params[:id].to_i)
    @user = User.find(params[:id])
    
    render "violations"
  end
  
  def submittedPermits
    @user = User.find(params[:id])
    @permissions = Permission.where(user_id:[@user.id.to_i])
    render "submitted_permits"
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :student_number, :course_and_year,
                                   :sts_bracket, :family_name, :middle_name, :home_address,
                                  :contact_number, :birthday)
    end
    
    # Before filters

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end