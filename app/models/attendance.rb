class Attendance < ApplicationRecord
  belongs_to :attendee, foreign_key: "attendee_id", class_name: "User"
  belongs_to :event
  after_create :mail_join_event

	def mail_join_event
  	UserMailer.join_email(self).deliver_now
  end
end
