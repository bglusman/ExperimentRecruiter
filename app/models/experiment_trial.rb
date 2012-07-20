class ExperimentTrial < ActiveRecord::Base
  field :experiment_id
  has_many :recruitments
  has_many :profiles, :through => :recruitments
  has_many :experiment_resources
  has_many :resources, :through => :experiment_resources

  has_many :events
  accepts_nested_attributes_for :events

  belongs_to :experiment
end
ExperimentTrial.auto_upgrade!