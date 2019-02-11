class Event < ApplicationRecord
	belongs_to :admin, class_name: "User", foreign_key: "admin_id"
	has_many :attendances
	has_many :attendees, class_name: "User", through: :attendances, foreign_key: "attendee_id"

	validates :start_date,
		presence: { message: "Tu as oublié la date de l'évènement !" }

	validate :start_date_cannot_be_in_the_past

	validates :duration,
		presence: { message: "Tu as oublié la durée de l'évènement !" },
		numericality: { only_integer: true }

	validate :duration_multiple_of_5

	validates :title,
		presence: { message: "Tu as oublié le titre de l'évènement !" },
		length: { minimum: 5, maximum: 140, too_short: "Ton titre est trop court, au moins 5 caractères !", too_long: "Ton titre est trop long, maximum 140 caractères !" }

	validates :description,
		presence: { message: "Tu as oublié la description de l'évènement !" },
		length: { minimum: 20, maximum: 1000, too_short: "Ta description est trop courte, au moins 20 caractères !", too_long: "Ta description est trop longue, maximum 1000 caractères !" }

	validates :price,
		presence: { message: "Tu as oublié le prix de l'évènement !" },
		numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000, message: "Non il faut ton prix soit compris entre 1 & 1000" }

	validates :location,
		presence: { message: "Tu as oublié le lieu de l'évènement !" }

	def start_date_cannot_be_in_the_past
		if start_date < Time.now
			errors.add(:start_date, "T'es pas Marty McFly, tu peux pas allez dans le passé bro !")
		end
	end

	def duration_multiple_of_5
		if duration % 5 != 0 && duration > 0
			errors.add(:duration, "Un multiple de 5 et on balance ton event dans les bacs !")
		end
  end
end
