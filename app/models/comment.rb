class Comment < ApplicationRecord
    belongs_to :post
    #belong_to :user
end
