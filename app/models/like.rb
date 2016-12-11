class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :university
  validates :university_id, uniqueness: {scope: :user_id}
end
