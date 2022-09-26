class Person < ApplicationRecord
    has_many :message
    validates :name,presence: {message: "名前は必須入力です"}
    validates :age,numericality: {message: "年齢は数字で入力してください"}
end
