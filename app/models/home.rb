class Home < ActiveRecord::Base
  has_many :figures, dependent: :destroy
end
