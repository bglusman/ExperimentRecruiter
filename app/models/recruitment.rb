class Recruitment < ActiveRecord::Base
  field :experiment_trial_id
  field :allow_repeat_subjects, :type => :boolean, :default => false
  field :minimum_participants,  :type => :integer
  field :maximum_participants,  :type => :integer
  field :number_to_email,       :type => :integer

  belongs_to :experiment_trial
  has_many :experiment_participants
  has_many :experiment_invitations
  has_many :profiles, :through => :experiment_participants
  has_many :invitees, :through => :experiment_invitations, :source => :profile

  validates_presence_of :maximum_participants

  after_create :populate_invitees

  def populate_invitees
    profiles = Profile.scoped
    profiles = profiles.not_in_experiment(experiment_trial) unless allow_repeat_subjects
    #profiles = filter_restrictions(profiles) if restrictions  # TODO
    profiles.sample(target_emails).each {|p| ExperimentInvitation.create(:profile_id => p.id, :recruitment_id => id)}
  end
end
Recruitment.auto_upgrade!