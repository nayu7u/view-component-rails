# frozen_string_literal: true

class ProductComponent < ViewComponent::Base
  def initialize(product:, product_counter:)
    @product = product
    @product_counter = product_counter
  end
end
