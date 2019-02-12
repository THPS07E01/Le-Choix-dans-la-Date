class Attendance < ApplicationRecord
  belongs_to :attendee, foreign_key: "attendee_id", class_name: "User"
  belongs_to :event
  after_create :join_event

	def join_event
  	UserMailer.join_email(self).deliver_now
  end
end
