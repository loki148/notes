class Item < ApplicationRecord
    validates :title, :expected_cost, presence: :true
end