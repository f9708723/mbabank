class Project < ActiveRecord::Base
  belongs_to :client
  has_many :proposals
end
