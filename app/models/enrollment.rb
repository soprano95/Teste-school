class Enrollment < ApplicationRecord
  belongs_to :school, optional: true
  belongs_to :school_year, optional: true
  belongs_to :filiere, optional: true
  belongs_to :grade, optional: true

  belongs_to :student, :class_name => 'Person', :foreign_key => :student_id
  accepts_nested_attributes_for :student
end
