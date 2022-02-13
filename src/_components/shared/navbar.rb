# frozen_string_literal: true

module Shared
  # The `Shared::Navbar` component is a default Bridgetown component.
  # TODO: Remove this components when it's not needed anymore.
  class Navbar < Bridgetown::Component
    def initialize(metadata:, resource:)
      @metadata = metadata
      @resource = resource
    end
  end
end
