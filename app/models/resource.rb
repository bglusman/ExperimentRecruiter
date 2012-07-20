class Resource < ActiveRecord::Base
  field :name
  has_many :experiment_resources
  has_many :experiments, :through => :experiment_resources
end
Resource.auto_upgrade!
