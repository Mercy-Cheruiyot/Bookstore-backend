class Book < ApplicationRecord
    belongs_to :user
    belongs_to :author
    validates :title, presence: true
    validates :genre, inclusion: {in: %w(Anime Comic Romance Financial)}
   
end
