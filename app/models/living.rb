class Living < ActiveRecord::Base
  belongs_to :university
  belongs_to :residence
end
