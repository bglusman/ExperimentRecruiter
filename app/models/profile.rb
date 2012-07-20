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
  field :updated_at, :type => :datetime
  field :created_at, :type => :datetime
  belongs_to :subject
  has_many :responses
  has_many :experiment_participants
  has_many :recruitments, :through => :experiment_participants
  has_many :experiments, :through => :recruitments
  has_paper_trail
end
Profile.auto_upgrade!
