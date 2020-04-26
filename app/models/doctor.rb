class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true, length: { minimum: 3 }
  validates :first_name, uniqueness: { scope: :last_name }
end

# doc = Doctor.find(21)
# doc.interns # -> array of Intern objects


# Get patients for a doctor - primitive way
# doc = Doctor.find(1)
# patients = []

# doc.consultations.each do |consultation|
#   patients << consultation.patient
# end

# Get patients for a doctor - associations way
# doc = Doctor.find(1)
# doc.patients
