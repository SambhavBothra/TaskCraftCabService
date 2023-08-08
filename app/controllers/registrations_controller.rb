class RegistrationsController < Devise::RegistrationsController
  protected

  def build_resource(hash = {})
    super
    resource.set_default_status
  end

  def after_sign_up_path_for(resource)
    flash[:notice] = 'Your driver account has been created and is awaiting approval by an admin.'
    new_driver_session_path
  end
end