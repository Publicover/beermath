class Beer < ActiveRecord::Base
  has_many :reviews
  validates :name, :brewer, :ounce, :ounce, presence: true

end
