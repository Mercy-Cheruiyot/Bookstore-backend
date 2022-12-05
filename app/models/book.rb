class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :genre, inclusion: {in: %w(Anime Comic Romance Financial)}
   
end
