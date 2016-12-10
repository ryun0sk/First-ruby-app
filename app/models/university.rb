class University < ActiveRecord::Base
  belongs_to :country
  belongs_to :language
  has_many:likes
end
