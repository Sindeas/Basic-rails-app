class Post < ApplicationRecord
    has_many :comments
    #belong_to :user
end
