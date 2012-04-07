class Experiment < Event
  field :name
  has_many :experiment_participants
  has_many :subjects, :through => :experiment_participants
end
Experiment.auto_upgrade!
