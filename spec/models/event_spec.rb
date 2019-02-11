require 'rails_helper'

RSpec.describe Event, type: :model do

  before(:each) do
    @event = FactoryBot.build(:event)
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@event).to be_a(Event)
    end

    it "is a valid date for start_date" do
      expect @event.start_date.class == Date
    end

    it "checks start_date is not past" do
      expect @event.start_date > Time.now
    end

    it "is an integer for duration" do
      expect @event.duration.class == Integer
    end

    it "is a multiple of 5 for duration" do
      expect @event.duration % 5 == 0
    end

    it "is a string for title" do
      expect @event.title.class == String
    end

    it "title.length between 5 - 140" do
      expect @event.title.length >= 5 && 140 >= @event.title.length
    end

    it "is a string for description" do
      expect @event.description.class == String
    end

    it "description.length to be between 20 - 1000" do
      expect @event.description.length >= 20 && 1000 >= @event.description.length
    end

    it "is a string for price" do
      expect @event.price.class == Integer
    end

    it "price to be between 1 - 1000" do
      expect @event.price >= 1 && 1000 >= @event.price
    end

    it "is a string for location" do
      expect @event.location.class == String
    end
  end
end
