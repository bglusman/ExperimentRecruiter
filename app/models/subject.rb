class Subject < User
  has_many :responses
  has_many :experiment_participants
  has_many :experiments, :through => :experiment_participants
end
Subject.auto_upgrade!