class RecordType < ApplicationRecord
  has_many :records
  validates :type, presence: true, uniqueness: true, allow_blank: false
end
