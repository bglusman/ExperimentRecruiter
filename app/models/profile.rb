class Profile < ActiveRecord::Base
  field :age
  field :major
  field :name
  field :email
  field :school_id
  field :notes
  field :status
  field :mobile
  field :sex

  field :no_shows,   :type => :integer, :default => 0
  field :updated_at, :type => :datetime
  field :created_at, :type => :datetime
  belongs_to :subject
  has_many :responses
  has_many :experiment_participants
  has_many :recruitments, :through => :experiment_participants
  has_many :experiment_trials, :through => :recruitments
  has_many :experiments, :through => :experiment_trials
  has_paper_trail

  scope :not_in_experiment, lambda {|experiment| !self.experiments.include? experiment }
end
Profile.auto_upgrade!
