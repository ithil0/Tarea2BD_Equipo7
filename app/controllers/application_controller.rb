class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:Nombre, :Apellido, :password, :Rut, :Telefono, :Direccion])
    end



protected
    def after_sign_in_path_for(resource)
	if resource==@employee then
        '/trabajador'

	elsif resource==@user then
        '/usuario'
        elsif resource==@admin then
        '/admistrador'
	end
    	 
end

    def after_sign_up_path_for(resource)
        if resource==@employee then
        '/trabajador'

	elsif resource==@user then
        '/usuario'
        elsif resource==@admin then
        '/adimistrador'
	end
end

end


