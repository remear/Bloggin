class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    root_path
  end
  
  private
  
  def set_current_user
    @user = current_user
  end
  
  def check_for_cancel
    if params[:commit] == "Cancel"
      redirect_to :back, :notice => "You have canceled your request."
    end
  end
end
