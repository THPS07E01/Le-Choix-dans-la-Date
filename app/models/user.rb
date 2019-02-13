class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendances
	has_many :events, foreign_key: "attendee_id", through: :attendances
	has_many :organized_events, foreign_key: 'admin_id', class_name: "Event"
 	has_many :attented_events, foreign_key: 'attendee_id', class_name: "Event"
  after_create :welcome_send

	validates :first_name,
		presence: { message: "Tu as oublié de renseigner ton prénom !" }

	validates :last_name,
		presence: { message: "Tu as oublié de renseigner ton nom !" }

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
