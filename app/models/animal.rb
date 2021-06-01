class Animal < ApplicationRecord
    has_many :health_checkups
    has_many :users, through: :health_checkups
    belongs_to :exhibit

    scope :alive, -> { where(deceased: false) }
end
