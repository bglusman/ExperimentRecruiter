class Response < ActiveRecord::Base
  belongs_to :profile
  belongs_to :choice
end
Response.auto_upgrade!