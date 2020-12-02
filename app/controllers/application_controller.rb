class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # CSRFへの対策
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name self_introduction sex img_name))
    devise_parameter_sanitizer.permit(:account_update, keys: %i(name self_introduction sex img_name))
  end
  
  # after_sign_in_path_forはdeviseが用意しているメソッドでサインインしたあとどこにリダイレクトさせるかカスタマイズするためのメソッド
  def after_sign_in_path_for(resource)
    users_path
  end
end
