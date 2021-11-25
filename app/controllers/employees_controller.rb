class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show edit update destroy ]

  # GET /employees or /employees.json
  def index
    @employees = Employee.paginate(page: params[:page], per_page: 5)
  end
    

  # GET /employees/1 or /employees/1.json
  def show
    @employees = Employee.find(params[:id])
		@employee_equipments = @employee.equipments.paginate(page: params[:page], per_page: 5)
  end

  # GET /employees/new
  def new
    @employee = Employee.new 
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
  end

  # POST /employees or /employees.json
  def create
    @employee = Employee.new(employee_params)
		if @category.save
			flash[:success] = "employee was created successfully"
			redirect_to employees_path
		else
			render 'new'
		end
  end

  # PATCH/PUT /employees/1 or /employees/1.json
  def update
    @employee = Employee.find(params[:id])
		if @employee.update(employee_params)
			flash[:success] = "employee name was successfully updated"
			redirect_to employee_path(@employee)
		else
			render 'edit'
		end
  end

  # DELETE /employees/1 or /employees/1.json
   end

  private
  def employee_params
		params.require(:employee).permit(:name)
	end
	def require_admin
		if !logged_in? || (logged_in? and !current_user.admin?)
			flash[:danger] = "only admin can use that action"
			redirect_to employees_path
		end
	end
end
