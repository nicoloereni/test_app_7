class Article < ApplicationRecord
  validates :title, presence: true
  has_many :article_categories
  has_many :categories, through: :article_categories
  belongs_to :user

  def username
    user = self.user
    user ? user.username : "franco"
  end
end
