class Qurriculum < ActiveRecord::Base
  attr_accessible :vacancy

  # Connects qurriculums to their respective user
  belongs_to :user
end
