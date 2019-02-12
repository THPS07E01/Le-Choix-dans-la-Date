class User < ApplicationRecord
  after_create :welcome_send

  has_many :attendances
	has_many :events, foreign_key: "attendee_id", through: :attendances
	has_many :organized_events, foreign_key: 'admin_id', class_name: "Event"
 	has_many :attented_events, foreign_key: 'attendee_id', class_name: "Event"

	validates :first_name,
		presence: { message: "Tu as oublié de renseigner ton prénom !" }

	validates :last_name,
		presence: { message: "Tu as oublié de renseigner ton nom !" }


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
