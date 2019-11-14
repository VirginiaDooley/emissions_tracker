class Courier < ApplicationRecord
    has_many :journies
    belongs_to :client
end
