class AnimalsController < ApplicationController
    def index
        @animals = Animal.all
        
        if !@animals.any?
            redirect_to new_animal_path, notice: "No animal. Please add new animal"
        end
      
        
    end
    def show
        @animal = Animal.find(params[:id])
    @health_checkup = HealthCheckup.new


    end
    def new
        @animal = Animal.new
       # @animal.build_exhibit
    end
    def create
        
        @animal = Animal.create(animal_params)
        puts animal_params
        redirect_to @animal
    end
    def edit
        @animal = Animal.find(params[:id])
      end
      def update
        # Parameters: {"authenticity_token"=>"[FILTERED]", "animal"=>{"name"=>"Peter rabbit", "deceased"=>"0", "exhibit_id"=>"2", "exhibit_attributes"=>{"name"=>""}}, "commit"=>"Update Animal", "id"=>"1"}
        @animal = Animal.find(params[:id])
      
        puts animal_params
        @animal.update(animal_params)
        if @animal.errors.messages != {}
          render :edit
        else
          redirect_to @animal
        end
      end
    
    private
    def animal_params
        params.require(:animal).permit(:name, :deceased, :exhibit_id, exhibit_attributes:[:name])
    end
end
