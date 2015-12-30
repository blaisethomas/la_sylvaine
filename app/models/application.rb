class Application < ActiveRecord::Base
	validates :email, presence: true
	validates :telephone, presence: true
	validates :location, presence: true
end
