class Picture < ActiveRecord::Base
	scope :newest_first, -> { order("created_at DESC")}
	scope :most_recent_five, -> { newest_first.limit(5)}
	scope :search_by_date, -> (date) {where("created_at < ?",date)}
end

#ここのscopeでmethodを作成。