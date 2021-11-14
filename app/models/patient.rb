class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def no_of_app
        self.appointments ? self.appointments.count : 0
    end
end
