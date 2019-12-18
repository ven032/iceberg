class Lccreate < ApplicationRecord
	has_many :docsets, dependent: :destroy 
end
