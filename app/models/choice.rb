class Choice < ActiveRecord::Base
  field :text
  belongs_to :property
  has_many :responses
end
Choice.auto_upgrade!