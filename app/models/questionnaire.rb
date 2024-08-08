# frozen_string_literal: true

class Questionnaire < ApplicationRecord
  enum sex: %i[male female]
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :favourite_color, length: { minimum: 2 }
  validates :age, numericality: { greater_than: 0 }
  validates :height, numericality: { greater_than: 0 }

  before_save lambda {
    first_name.capitalize!
    last_name.capitalize!
  }
end
