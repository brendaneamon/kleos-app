class Figure < ActiveRecord::Base
  belongs_to :home
  # AM: +1 validations.
  validates :home, presence: true
  validates :name, presence: true
end
