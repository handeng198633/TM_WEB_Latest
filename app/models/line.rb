class Line < ActiveRecord::Base
	validates :line_name, presence: true
	validates :line_day, presence: true
	validates :detail_info, presence: true
end
