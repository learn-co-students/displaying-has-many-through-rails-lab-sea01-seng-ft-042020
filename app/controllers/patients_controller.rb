class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
        @patient.appointments.each do |appointment|
            @patient_doctor = @patient.doctors.find(appointment.doctor_id)
        end
    end
end