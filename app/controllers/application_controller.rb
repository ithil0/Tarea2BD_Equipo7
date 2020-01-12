class ApplicationController < ActionController::Base
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


