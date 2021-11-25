class EquipmentController < ApplicationController
  
	before_action :set_equipments,only: [:edit, :update, :show, :destroy]
	before_action :require_user,except: [:index, :show]
	before_action :require_same_user, only: [:edit, :update, :destroy] 

	def index
		@equipments = Equipment.paginate(page: params[:page], per_page: 5)
	end

	def new
    @equipment= Equipment.new
	end

	def create
		#render plain: params[:equipment].inspect
		@equipment = Equipment.new(equipment_params)
		@equipment.user = current_user
		@equipment.save
		if @equipment.save
			#something
			redirect_to equipment_path(@equipment) #this code used to show after submission
			flash[:success] = "Equipo was successfully created"
		else
			render 'new'
		end
		
	end

	def show
		@equipment= Equipment.find(params[:id])
	end

	def edit
		@equipment= Equipment.find(params[:id])
	end

	def update
		@equipment= Equipment.find(params[:id])
		if @equipment.update(equipment_params)
			redirect_to equipment_path(@equipment)
			flash[:success] = "Equipo successfully updated"
		else
			render 'edit'
		end
	end
	
	private
	def set_equipments
		@equipment= Equipment.find(params[:id])
	end
	def equipment_params
		params.require(:equipment).permit(:labelled, :motherboard, departament_ids: [])
		
	end
	def require_same_user
		if current_user != @equipo.user and !current_user.admin?
		flash[:danger] = "you can only edit are delete your own equipo"
		redirect_to root_path 
		end
	end

end