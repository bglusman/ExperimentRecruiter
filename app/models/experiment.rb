class Experiment < ActiveRecord::Base
  field :name
  field :title
  field :description
  field :target_participants, :type => :integer
  field :target_emails,       :type => :integer
  field :category_id,         :type => :integer
  field :created_at,          :type => :datetime

  has_many :recruitments
  has_many :subjects, :through => :recruitments
  has_many :experiment_resources
  has_many :resources, :through => :experiment_resources
  belongs_to :category
  has_many :events


  accepts_nested_attributes_for :events

end
Experiment.auto_upgrade!
