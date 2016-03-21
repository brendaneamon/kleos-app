class Home < ActiveRecord::Base
  has_many :figures, dependent: :destroy
  validates :name, presence: true
end
