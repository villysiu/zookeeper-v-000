class AnimalsController < ApplicationController
    def index
        @animals = Animal.all    
        redirect_to new_animal_path, notice: "No animal. Please add new animal" if !@animals.any?

    end
    def show
        @animal = Animal.find(params[:id])
    end
    def new
        @animal = Animal.new
    end
    def create
        @animal = Animal.create(animal_params)
        if @animal.valid?  
          redirect_to @animal, notice: 'Animal was successfully created.' 
        else
          render :new
        end
  
        
    end
    def edit
        @animal = Animal.find(params[:id])
      end
      def update
        # Parameters: {"authenticity_token"=>"[FILTERED]", "animal"=>{"name"=>"Peter rabbit", "deceased"=>"0", "exhibit_id"=>"2", "exhibit_attributes"=>{"name"=>""}}, "commit"=>"Update Animal", "id"=>"1"}
        @animal = Animal.find(params[:id])
      
        @animal.update(animal_params)
        if @animal.valid?
          redirect_to @animal, notice: 'Animal was successfully updated.'
        else
          render :edit
        end
      end
    
    private
    def animal_params
        params.require(:animal).permit(:name, :deceased, :exhibit_id, exhibit_attributes:[:name])
    end
end
