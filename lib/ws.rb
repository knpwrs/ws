require "socket"

module WS
	def self.start_server(options)
		server = TCPServer.new("127.0.0.1", options[:port])
		while (conn = server.accept)
			file = conn.gets.scan(/(?<=\/).*(?=\sHTTP)/)[0].split("/")
			file_path = File.join(options[:directory], file)
			file_path = File.join(file_path, "index.html") if File.directory? file_path
			mime_type = get_mime_type file_path
			begin
				file_handle = File.open(file_path, "r")
				conn.print get_header("200/OK", mime_type)
				conn.print file_handle.read()
			rescue Errno::ENOENT
				conn.print get_header("404/NOT FOUND", "text/html")
				conn.print "404: File not found."
			end
			conn.close
		end
	end

	private
	def self.get_header(status, mime_type)
		"HTTP/1.1 #{status}\r\nContent-Type:#{mime_type}\r\n\r\n"
	end
end