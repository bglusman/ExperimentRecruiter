class Response < ActiveRecord::Base
  belongs_to :subject
  belongs_to :choice
end
Response.auto_upgrade!