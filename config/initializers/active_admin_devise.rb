module ActiveAdmin::Devise::Controller

	def root_path
		"/"  #add your logic
	end

	protected

		# def after_sign_up_path_for(resource)			
		# 	AdminUserMailer.new_user_registration(resource).deliver
		# 	"/admin/admin_users/#{resource.id}/new_credit_card_after_registration"
		# end

		# def after_sign_in_path_for(resource)
		# 	if resource.customer_payment_profiles.empty?
		# 		flash[:notice] = "Please add your credit card for to can to continue to the admin panel."
		# 		"/admin/admin_users/#{resource.id}/new_credit_card_after_registration"
		# 	else
		# 		if resource.domain_name.empty?
		# 			flash[:notice] += "\nPlease add a domain name to that your site to be put online."
		# 		end
		# 		super
		# 	end
		# 	# stored_location_for(resource) || welcome_path
		# end

end