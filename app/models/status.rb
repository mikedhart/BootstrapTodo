class Status < ActiveRecord::Base
	STATUS_ACTIVE = "Active"
	STATUS_COMPLETE = "Completed"
	STATUS_ARCHIVED = "Archived"

	def self.active
		where(name: STATUS_ACTIVE).last
	end
	
	def self.archived
		where(name: STATUS_ARCHIVED).last
	end
	
	def self.complete
		where(name: STATUS_COMPLETE).last
	end
end
