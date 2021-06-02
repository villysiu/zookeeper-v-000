class AnimalsController < ApplicationController
    def index
        @animals = Animal.all
        
        if !@animals.any?
            redirect_to new_animal_path, notice: "No animal. Please add new animal"
        end
      
        
    end
    def show
        @animal = Animal.find(params[:id])

    end
    def new
        @animal = Animal.new
        @animal.build_exhibit
    end
    def create
        puts "hellp"
        @animal = Animal.create(animal_params)
        puts animal_params
        redirect_to @animal
    end
    def edit
        @animal = Animal.find(params[:id])
      end
      def update
        @animal = Animal.find(params[:id])
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
