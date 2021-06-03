class Exhibit < ApplicationRecord
    has_many :animals

    validates :name, presence: true, uniqueness:  { case_sensitive: false }

end