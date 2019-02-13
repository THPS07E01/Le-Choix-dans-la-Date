module UsersHelper

	def is_admin?
		if current_user.id == Event.find(params[:id]).admin_id
			return true
		else 
			return false
		end
	end
end
