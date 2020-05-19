class PatientsController < ApplicationController
  def new
  end

  def edit
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end
end
