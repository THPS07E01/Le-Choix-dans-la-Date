class Attendance < ApplicationRecord
  after_create :join_event

  belongs_to :attendee, class_name: "User", foreign_key: "attendee_id"
  belongs_to :event

	def join_event
  	UserMailer.join_email(self).deliver_now
  end
end
