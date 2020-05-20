class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end
    
    def show
        @doctor = Doctor.find(params[:id])
        @doctor.appointments.each do |appointment|
            @doctor_patient = @doctor.patients.find(appointment.patient_id)
        end
    end
end