class Kimatu < ApplicationRecord
    validates :kokugo,numericality: {greater_than_or_equal_to: 0,less_than_or_equal_to: 100} 
    validates :sugaku,numericality: {greater_than_or_equal_to: 0,less_than_or_equal_to: 100} 
    validates :eigo,numericality: {greater_than_or_equal_to: 0,less_than_or_equal_to: 100} 
    validates :kbn,inclusion: {in: [ 1, 2]}


end
