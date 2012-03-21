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
  belongs_to :user
end
Profile.auto_upgrade!
