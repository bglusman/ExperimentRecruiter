class Category < ActiveRecord::Base
  field :name
  has_many :experiments
end
Category.auto_upgrade!