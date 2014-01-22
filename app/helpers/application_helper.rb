module ApplicationHelper
	def full_title(pre_site_title, post_site_title)
		base_title = "Full Ride Central"
		if pre_site_title.empty? and post_site_title.empty?
			base_title
		else
			"#{pre_site_title} | #{base_title} | #{post_site_title}"
		end
	end

	#path should begin with / to indicate top of website directory
	def site_url(path)
		base_url = "http://fullridecentral.com"
		"#{base_url}#{path}"
	end

	#current-menu-item and current-page-item?
	#perhaps just make this into a thing where it just prints out the magic words if it is used in the proper place
	def make_header(current_url)
		full_header_code = "temp"
		if current_url.empty?
			#we don't use a specific current-menu-item or current-page-item scheme
		end
		full_header_code
	end
end
