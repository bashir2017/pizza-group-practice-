class User < ApplicationRecord
    has_many :orders 
    has_many :pizza_pies, through: :orders 
end
