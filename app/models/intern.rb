class Intern < ActiveRecord::Base
  belongs_to :doctor
end


# bob = Intern.find(37)
# bob.doctor # -> single Doctor object
