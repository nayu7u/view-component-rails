# frozen_string_literal: true

class ListComponent < ViewComponent::Base
  renders_many :tasks, TaskComponent
end
