class Property < ActiveRecord::Base
  #attr_accessor :name, :text, :multiple_choice?, :choices
  field :name
  field :text
  field :response
  field :multiple_choice, :type => :boolean
  has_many :choices
  accepts_nested_attributes_for :choices
  field :mutex_choices, :type => :boolean
end
Property.auto_upgrade!