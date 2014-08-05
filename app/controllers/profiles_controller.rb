class ProfilesController < ActiveRecord::Base

def show
	@profile = params[:user_id]
end

end
