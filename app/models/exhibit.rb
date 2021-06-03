class Exhibit < ApplicationRecord
    has_many :animals

    validates :name, presence: true, uniqueness:  { case_sensitive: false }

    scope :find_case_insensitive_exhibit, -> (e) { Exhibit.where('name like ?', e).first }
   # Exhibit.where("name like ?","petting ZOO")



end