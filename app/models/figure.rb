class Figure < ActiveRecord::Base
  belongs_to :home
  validates :home, presence: true
  validates :name, presence: true
end
