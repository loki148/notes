class Item < ApplicationRecord
    validates :title, presence: :true
    validates :expected_cost, presence: :true
end