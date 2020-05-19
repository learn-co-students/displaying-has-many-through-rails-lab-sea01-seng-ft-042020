class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def show
        @patient = Patient.find(params[:id])
    end

    def appointment_count
        self.appointments.count
    end
end
