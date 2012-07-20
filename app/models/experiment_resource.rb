class ExperimentResource < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :resource

  field :resource_id, :type => :integer
  field :experiment_id, :type => :integer

end
ExperimentResource.auto_upgrade!
