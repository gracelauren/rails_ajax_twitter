class Blub < ActiveRecord::Base

  validates :content, presence: true
  belongs_to :user

end
