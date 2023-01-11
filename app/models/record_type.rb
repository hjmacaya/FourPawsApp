class RecordType < ApplicationRecord
  has_many :records
  validates :record_type, presence: true, uniqueness: true, allow_blank: false
end
