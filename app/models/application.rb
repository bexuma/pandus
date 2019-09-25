class Application < ApplicationRecord
    geocoded_by :address
    after_validation :geocode, :if => :address_changed?
    
    validates_presence_of :title, :description, :address
end
