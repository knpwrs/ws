Gem::Specification.new do |s|
	s.name = "ws"
	s.version = "0.1.4"
	s.date = "2012-03-19"
	s.description = "A simple web server for testing static websites."
	s.summary = "Launches a simple static web server in the current directory."
	s.authors = ["Kenneth Powers"]
	s.email = ["ken@kenpowers.net"]
	s.files = ["lib/ws.rb", "bin/ws", "bin/.wsmimetypes.rb", "README.md"]
	s.homepage = "http://kenpowers.net"
	s.executables << "ws"
end