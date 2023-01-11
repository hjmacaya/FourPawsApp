class Record < ApplicationRecord
  belongs_to :pet
  belongs_to :vet
  belongs_to :record_type
end
