class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def readable_format
        datetime = self.appointment_datetime
        datetime.strftime('%B %d, %Y at %k:%M')
        # month = datetime.strftime('%B')
        # day = datetime.strftime('%d')
        # year = datetime.strftime('%Y')
        # time = datetime.strftime('%k:%M')
        # readable_format = "#{month} #{day}, #{year} at #{time}"
    end

    def doctor_name=(name)
        self.doctor = Doctor.find_or_create_by(name: name)
    end

    def doctor_name=
        self.doctor ? self.doctor.name : nil
    end
end
