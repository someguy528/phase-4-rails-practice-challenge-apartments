class Tenant < ApplicationRecord
    has_many :leases
    has_many :apartments, through: :leases
    validates :age, :name, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 17}
end
