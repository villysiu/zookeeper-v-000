class HealthCheckupsController < ApplicationController
  before_action :get_animal, only: [:new, :create, :index]
  before_action :set_health_checkup, only: [:edit, :update, :destroy]

  def index
    @health_checkups = @animal.health_checkups
  end
  def new
   @health_checkup = @animal.health_checkups.build
  end
  def create
    @health_checkup = @animal.health_checkups.build(health_checkup_params)
    
    if @health_checkup.save && @health_checkup.valid?
      redirect_to animal_health_checkups_path(@animal), notice: 'Checkup was successfully created.'
    else
      render :new
    end
  end
  def edit
    
  end
  def update
    if @health_checkup.update(health_checkup_params)
      redirect_to animal_health_checkups_path(@health_checkup.animal), notice: 'Checkup was successfully updated.'
    else
      render :edit
    end

  end
  def show
    redirect_to root_path, notice: 'Path does not exist'
  end
    def destroy
  
     # health_checkup = HealthCheckup.find(params[:id])
      a = health_checkup.animal
      health_checkup.destroy
      redirect_to animal_health_checkups_path(a)
    end
    private
  
    def health_checkup_params
      params.require(:health_checkup).permit(:comments, :animal_id, :user_id, :date)
    end
    def get_animal
      @animal = Animal.find(params[:animal_id])
    end
    def set_health_checkup
      @health_checkup = HealthCheckup.find(params[:id])
    end
    
end
