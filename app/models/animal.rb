class Animal < ApplicationRecord
    has_many :health_checkups
    has_many :users, through: :health_checkups
    belongs_to :exhibit

    scope :alive, -> { where(deceased: false) }
    scope :deceased, -> { where(deceased: true) }
    validates_presence_of :name

    accepts_nested_attributes_for :exhibit
  
  

end
