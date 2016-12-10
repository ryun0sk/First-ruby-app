class Contract < ActiveRecord::Base
  belongs_to :agent
  belongs_to :university
end
