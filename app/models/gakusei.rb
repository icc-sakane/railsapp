class Gakusei < ApplicationRecord
    validates :name,presence: true
    validates :name,length: {maximum: 10}
    validates :age,numericality: {greater_than_or_equal_to: 18 } 
    validates :gakusei_no,uniqueness: true 
end
