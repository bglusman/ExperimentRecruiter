class Subject < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  field :email, :index => true, :unique => true, :null => false, :default => "",   :type => :string
  field :encrypted_password, :null => false, :default => "",                       :type => :string

  ## Recoverable
  field :reset_password_token, :index => true, :unique => true,                    :type => :string
  field :reset_password_sent_at,                                                   :type => :datetime

  ## Rememberable
  field :remember_created_at,                                                      :type => :datetime

  ## Trackable
  field :sign_in_count, :default => 0,                                             :type => :integer
  field :current_sign_in_at,                                                       :type => :datetime
  field :last_sign_in_at,                                                          :type => :datetime
  field :current_sign_in_ip,                                                       :type => :string
  field :last_sign_in_ip,                                                          :type => :string

  has_one :profile

  has_many :recruitments, :through => :profile
  has_many :experiment_trials,  :through => :recruitments

end
Subject.auto_upgrade!