class HealthCheckup < ApplicationRecord
    belongs_to :animal
    belongs_to :user

   validates :comments, presence: true

   
    
end
