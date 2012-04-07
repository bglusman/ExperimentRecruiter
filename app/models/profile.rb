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
  belongs_to :subject
  has_many :responses
  has_many :experiment_participants
  has_many :experiments, :through => :experiment_participants
end
Profile.auto_upgrade!
