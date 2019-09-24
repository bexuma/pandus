class Application < ApplicationRecord
    validates_presence_of :title, :description, :address
end
