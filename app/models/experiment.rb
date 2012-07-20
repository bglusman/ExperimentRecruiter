class Experiment < ActiveRecord::Base
  field :name
  field :title
  field :description
  field :category_id,         :type => :integer
  field :created_at,          :type => :datetime

  has_many :experiment_trials

  belongs_to :category


end
Experiment.auto_upgrade!
