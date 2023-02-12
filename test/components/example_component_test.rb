# frozen_string_literal: true

require "test_helper"

class ExampleComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    assert_equal(
      %(<span title="my_title">Hello, components!</span>),
      render_inline(ExampleComponent.new(title: "my_title")) { "Hello, components!" }
                   .css("span").to_html
    )
  end
end
