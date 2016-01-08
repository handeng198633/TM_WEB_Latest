class PackageordersController < ApplicationController
	before_action :logged_in_user, only: [:index, :create, :edit, :update, :new, :show]
	before_action :admin_user, only: :destroy

  	def index
    		respond_to do |format|
      	format.html {}
      	format.json { render json: PackageordersDatatable.new(view_context) }
        end
    end

    	def new
      		@packageorder = Packageorder.new
      end

    	def create
    		@packageorder = Packageorder.new(packageorder_params)
        @packageorder.sales = current_user.name
    		if @packageorder.save
    			redirect_to packageorders_path
    		else
    			render 'new'	
    		end
    	end

    	def destroy
    		Packageorder.find(params[:id]).destroy
        redirect_to packageorders_path
    	end

      def edit
        @packageorder = Packageorder.find(params[:id])
      end

      def show
        @packageorder = Packageorder.find(params[:id])
      end

      def update
        @packageorder = Packageorder.find(params[:id])
        if @packageorder.update_attributes(packageorder_params)
          flash[:success] = "编辑成功"
          redirect_to packageorders_path
        else
          render 'edit'
        end
      end


    	private

  	  	def packageorder_params
  	  		params.require(:packageorder).permit(:group_number, :outdate, :returndate, :travel_agency, :person_list, :travel_content, :price1, :price2, :price3, :price4, :out_tracffic, :out_tracffic_way, :return_tracffic, :return_tracffic_way, :cost, :package_ornot, :sales)
  	  	end

  	    def correct_user
  	      @user = User.find(params[:id])
  	      redirect_to(root_url) unless current_user?(@user)
  	    end

  	    def admin_user
  	      redirect_to{roo_url} unless current_user.admin?
  	    end
  end
