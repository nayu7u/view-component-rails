# frozen_string_literal: true

class TaskComponent < ViewComponent::Base
  def initialize(description:)
    @description = description
  end
end
