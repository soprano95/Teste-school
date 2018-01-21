class Person < ApplicationRecord
  belongs_to :religion, optional: true
  belongs_to :ethnic, optional: true
  has_many :students, :class_name => 'Enrollment', :foreign_key => :student_id

end
