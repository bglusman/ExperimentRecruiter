class Recruitment < ActiveRecord::Base
  field :experiment_id

  belongs_to :experiment
  has_many :experiment_participants
  has_many :subjects, :through => :experiment_participants
end
Recruitment.auto_upgrade!