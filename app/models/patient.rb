class Patient < ApplicationRecord
	validates :name, presence: true
  has_many :exams
end
