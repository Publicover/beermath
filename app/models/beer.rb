class Beer < ActiveRecord::Base

  validates :name, :brewer, :ounce, :ounce, presence: true

end
