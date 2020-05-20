class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.all.find_by(params[:id])
    end
end
