class Immobilier < ApplicationRecord
    has_one_attached :photo
    has_many_attached :images
end
