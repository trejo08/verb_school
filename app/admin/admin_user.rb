ActiveAdmin.register AdminUser do   
  
  config.filters = false
  index do                            
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.actions                         
  end

  controller do
    def update
      if params[:admin_user][:password].blank?
        params[:admin_user].delete("password")
        params[:admin_user].delete("password_confirmation")
      end
      # get the currently logged in AdminUser's id
      current_id = current_admin_user.id
      # load the AdminUser being updated
      @admin_user = AdminUser.find(params[:id])
      # update the AdminUser with new attributes
      # if successful, this will sign out the AdminUser being updated
      if @admin_user.update_attributes(params[:admin_user])
        # if the updated AdminUser was the currently logged in AdminUser, sign them back in
        if @admin_user.id == current_id
          sign_in(AdminUser.find(current_id), :bypass => true)
        end
        flash[:notice] = 'Password updated.'
        redirect_to '/admin/admin_users'
        # display errors
      else
        render :action => :edit
      end
    end
  end
end                                   
