class University < ActiveRecord::Base
  belongs_to :country
  belongs_to :language
  has_many :likes
  has_many :livings
  has_one :contract
  has_one :agent, through: :contract, source: :agent
end
