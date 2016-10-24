module Namer
  extend ActiveSupport::Concern

  included do
    def best_name
      "#{first_name} #{middle_name} #{last_name}"
    end
  end
end