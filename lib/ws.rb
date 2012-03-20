require "socket"

module WS
	def self.start_server(options)
		server = TCPServer.new("127.0.0.1", options[:port])
		while (conn = server.accept)
			file = conn.gets.scan(/(?<=\/).*(?=\sHTTP)/)[0].split("/")
			file_path = File.join(options[:directory], file)
			file_path = File.join(file_path, "index.html") if File.directory? file_path
			mime_type = get_mime_type file_path
			conn.puts mime_type
			conn.puts file_path
			conn.close
		end
	end
end