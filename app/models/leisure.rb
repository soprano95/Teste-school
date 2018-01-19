class Leisure < ApplicationRecord
  belongs_to :person
  belongs_to :leisure_type
end
