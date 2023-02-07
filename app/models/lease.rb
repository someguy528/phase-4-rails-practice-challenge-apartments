class Lease < ApplicationRecord
    belongs_to :apartment
    belongs_to :tenant
    validates :rent, presence: true
    # validates :tenant_id, uniqueness: {scope: :apartment_id}
    # validates :apartment_id, uniqueness: {scope: :tenant_id}
end
