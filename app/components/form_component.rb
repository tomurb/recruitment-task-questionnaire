# frozen_string_literal: true

class FormComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(questionnaire:)
    @questionnaire = questionnaire
  end
end
