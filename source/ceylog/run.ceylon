import ceylon.net.http { ... }
import ceylon.net.http.server { 
	newServer,
	Server }
import ceylon.io { SocketAddress }

"Run the module `ceylog`."
shared void run() {
	//create a HTTP server
	Server server = newServer(routes);
	
	//start the server on port 8080
	server.start(SocketAddress("127.0.0.1",8080));
}