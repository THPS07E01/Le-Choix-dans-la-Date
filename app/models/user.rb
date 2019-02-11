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

	validates :email,
		presence: { message: "Tu as oublié de renseigner ton email !" },
		uniqueness: { message: "Cet email est déjà pris !" },
   	format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Il te faut une adresse email valide !" }

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
