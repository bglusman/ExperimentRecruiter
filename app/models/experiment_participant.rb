class ExperimentParticipant < ActiveRecord::Base
  field :recruitment_id
  field :subject_id
  field :profile_id

  belongs_to :recruitment
  belongs_to :subject
  belongs_to :profile
end
ExperimentParticipant.auto_upgrade!