class Property < ActiveRecord::Base
  attr_accessible :choices_attributes, :name, :text, :response, :multiple_choice, :mutually_exclusive
  field :name
  field :text
  field :response
  field :multiple_choice, :type => :boolean
  has_many :choices
  accepts_nested_attributes_for :choices
  field :mutually_exclusive, :type => :boolean
end
Property.auto_upgrade!
