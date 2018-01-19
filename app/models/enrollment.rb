class Enrollment < ApplicationRecord
  belongs_to :school
  belongs_to :school_year
  belongs_to :filiere
  belongs_to :grade
end
