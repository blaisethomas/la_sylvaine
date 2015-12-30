class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def new
  	@application = Application.new
  end

  def create
  	@application = Application.new(application_params)
  	if @application.save
  		redirect_to confirmation_path, notice: 'Thank you for applying, you will be contacted shorlty'
  	else 
  		render :new
  	end
  end

  def show
  end

  def delete
  end

  private
  def application_params
  	params.require(:application).permit(:parent_first_name, :parent_last_name, :email, :telephone, :child_first_name, :child_dob, :school, :child_class, :dance_level, :location)
  	
  end
end
