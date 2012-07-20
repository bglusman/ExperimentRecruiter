class Experiment < ActiveRecord::Base
  field :name
  field :title
  field :description
  field :all_day,   :type => :boolean
  field :starts_at, :type => :datetime
  field :ends_at,   :type => :datetime
  field :created_at,:type => :datetime

  has_many :experiment_participants
  has_many :subjects, :through => :experiment_participants
  has_many :events



end
Experiment.auto_upgrade!
