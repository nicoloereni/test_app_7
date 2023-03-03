class Article < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  def username
    user = self.user
    user ? user.username : "franco"
  end
end
