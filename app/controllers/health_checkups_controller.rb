class HealthCheckupsController < ApplicationController
    def create
        health_checkup = HealthCheckup.create(health_checkup_params)
        redirect_to health_checkup.animal
      end
    
      def destroy
    
        health_checkup = HealthCheckup.find(params[:id])
        a = health_checkup.animal
        health_checkup.destroy
        redirect_to a
      end
      private
    
      def health_checkup_params
        params.require(:health_checkup).permit(:comments, :animal_id, :user_id, :date)
      end
    
end
