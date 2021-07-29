class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authenticate_admin!
    unless current_user.present? && current_user.is_admin?
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end
end
