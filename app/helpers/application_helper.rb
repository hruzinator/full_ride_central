module ApplicationHelper
	def full_title(pre_site_title, post_site_title)
		base_title = "Full Ride Central"
		if pre_site_title.empty? and post_site_title.empty?
			base_title
		else
			"#{pre_site_title} | #{base_title} | #{post_site_title}"
		end
	end
end
