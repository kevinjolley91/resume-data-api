class Student < ApplicationRecord
  has_many :experiences, :educations, :skills, :capstones
end
