class Animal < ApplicationRecord
    has_many :health_checkups
    has_many :users, through: :health_checkups
    belongs_to :exhibit

    scope :alive, -> { where(deceased: false) }
    scope :deceased, -> { where(deceased: true) }
 
    validates :name, presence: true, uniqueness:  { case_sensitive: false }

    accepts_nested_attributes_for :exhibit
  
    def exhibit_attributes=(exhibit_attribute) 
        exhibit = Exhibit.find_or_create_by(exhibit_attribute)  
        
        if exhibit.valid?
            self.exhibit = exhibit 
        else

            e = Exhibit.where(exhibit_attribute)
puts e
            exhibit.errors.full_messages.each do |message| 
                puts message 
             end 
        end
    end

end
