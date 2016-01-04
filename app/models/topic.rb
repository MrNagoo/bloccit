class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  has_many :labelings, as: :labelable

  has_many :labels, through: :labelings

  scope :visible_to, -> (user) { user ? all : publically_visible }
  scope :publically_visible, -> { where(public: true) }
  scope :privately_visible, -> { where(public: false) }
end
