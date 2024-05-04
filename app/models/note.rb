class Note < ApplicationRecord
    validates :body, presence: true
    validates :name, length: {in: 3..32}
end