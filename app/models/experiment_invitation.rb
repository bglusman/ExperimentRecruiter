class ExperimentInvitation < ActiveRecord::Base
  field :recruitment_id
  field :profile_id

  belongs_to :recruitment
  belongs_to :profile
  has_one :subject, :through => :profile
end
ExperimentInvitation.auto_upgrade!