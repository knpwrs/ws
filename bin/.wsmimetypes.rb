module WS
	def self.get_mime_type(filename)
		case filename
		when /^.*\.css$/
			"text/css"
		when /^.*\.gif$/
			"image/gif"
		when /^.*\.html$/
			"text/html"
		when /^.*\.htm$/
			"text/html"
		when /^.*\.jpeg$/
			"image/jpeg"
		when /^.*\.jpg$/
			"image/jpeg"
		when /^.*\.json$/
			"application/json"
		when /^.*\.js$/
			"application/x-javascript"
		when /^.*\.pdf$/
			"application/pdf"
		when /^.*\.png$/
			"image/png"
		when /^.*\.svg$/
			"image/svg+xml"
		when /^.*\.xhtml$/
			"appliaction/xhtml+xml"
		when /^.*\.(xml|xsl)$/
			"application/xml"
		when /^.*\.xslt$/
			"application/xslt+xml"
		else
			"text/plain"
		end
	end
end