class Author < ApplicationRecord
    has_many :books
    has_many :users, through: :books
    validates :genre, inclusion: {in: %w(Anime Comic Romance Financial)}
end
