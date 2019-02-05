class Creditcard < ApplicationRecord
  validates :cc_number, :cc_expiry, :cc_cvv2, :full_name, presence: true
  validates :cc_number, length: { in: 15..16 }
  self.primary_key = 'cc_number'
end

