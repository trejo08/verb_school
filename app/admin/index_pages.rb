ActiveAdmin.register IndexPage do

	actions :edit, :update, :show
	config.filters = false

	action_item only:[:edit] do |resource|
		link_to "Show Appointment Page", admin_index_page_path(current_admin_user.index_page.id)
	end

	# action_item only:[:show] do |resource|
	# 	link_to "Show Appointment Page", edit_admin_index_page_path(current_admin_user.index_page.id)
	# end

	form do |f|
		f.inputs "Index Page" do
			f.input :title
			f.input :description1
			f.input :description2
			f.input :description3
		end
		f.buttons
	end

	controller do
		def index
			redirect_to edit_admin_index_page_path(current_admin_user.index_page.id)
		end

		def show
			@index_page = current_admin_user.index_pages.find(params[:id]) rescue nil
			if @index_page.nil? 
				redirect_to admin_root_path
			end
		end

		def edit
			@index_page = current_admin_user.index_pages.find(params[:id]) rescue nil
			if @index_page.nil? 
				redirect_to admin_root_path
			end
		end

		def update
			@index_page = current_admin_user.index_pages.find(params[:id])
			respond_to do |format|
		      if @index_page.update_attributes(params[:index_page])
		        format.html { redirect_to admin_index_page_path(@index_page.id), notice: 'Index page successfully updated.' }
		        format.json { head :no_content }
		      else
		        format.html { render action: "/admin/index_pages/#{current_admin_user.index_page.id}/edit" }
		        format.json { render json: @index_page.errors, status: :unprocessable_entity }
		      end
		  	end
		end
	end
  
end
