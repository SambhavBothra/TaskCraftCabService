class Cab < ApplicationRecord
	def self.ransackable_attributes(auth_object = nil)
    ["cab_no", "created_at", "id", "updated_at"]
  end
end
