class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  has_many :labelings, as: :labelable

  has_many :labels, through: :labelings

  scope :visible_to, :publically_visible
  scope :publically_visible, -> (user) {user ? all : where(public: true) }
  scope :privately_visible, -> (user) {user ? all : where(public: false) }
end
