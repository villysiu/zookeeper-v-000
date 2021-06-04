class Exhibit < ApplicationRecord
    has_many :animals

    validates :name, presence: true, uniqueness:  { case_sensitive: false }

  #  scope :find_case_insensitive_exhibit, -> (e) { Exhibit.where(name.upper == e.upper).first }
    scope :case_insensitive_exhibit, -> (e) { where("lower(name) = ?",  e.downcase).first }
   # Exhibit.where("name like ?","petting ZOO")



end