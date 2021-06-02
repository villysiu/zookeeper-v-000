class Animal < ApplicationRecord
    has_many :health_checkups
    has_many :users, through: :health_checkups
    belongs_to :exhibit

    scope :alive, -> { where(deceased: false) }
    scope :deceased, -> { where(deceased: true) }
    validates_presence_of :name

    accepts_nested_attributes_for :exhibit
  
    def exhibit_attributes=(exhibit_attribute)
        puts "1111"
        puts exhibit_attribute
           
            exhibit = Exhibit.find_or_create_by(exhibit_attribute)
            puts "hellp"
            puts exhibit.name
            puts "22"
            if exhibit.valid?
                self.exhibit = exhibit 
            end
   
      end

end
