class Exhibit < ApplicationRecord
    has_many :animals

    validates_presence_of :name
    validates :name, uniqueness: { case_sensitive: false }
end