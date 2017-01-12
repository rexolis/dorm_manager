class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def index
    
  end
  
  def show
    @user = User.all
  end
  
  def hello
    render html: "hola, mundo!"
  end
  
end
