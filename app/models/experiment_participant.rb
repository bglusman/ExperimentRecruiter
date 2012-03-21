class ExperimentParticipant < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :subject
end
ExperimentParticipant.auto_upgrade!