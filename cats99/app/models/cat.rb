require 'date'

class Cat < ApplicationRecord
    COLORS = ['White', 'Black', 'Red', 'Blue', 'Grey', 'Cream', 'Brown', 'Cinnamon', 'Fawn']

    validates :sex, presence: true, inclusion: {in: ['M', 'F']}
    
    validates :color, presence: true, inclusion: {in: COLORS}
    validates :birth_date, presence: true
    validate :birth_date_cannot_be_future, on: :create
    validates :name, presence: true

    def birth_date_cannot_be_future
        if birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
        end
    end


    def age
        time_ago_in_words(Date.today - birth_date)

    end
end     