import ceylon.net.http.server {

	HttpEndpoint,
	Endpoint,
	startsWith,
	Response,
	Request,
	AsynchronousEndpoint,
	endsWith
}
import ceylon.net.http.server.endpoints {

	serveStaticFile
}
import ceylog.controllers {

	AboutController,
	IndexController
}

{HttpEndpoint*} routes = {
	
	AsynchronousEndpoint {
		path = endsWith(".js").or(endsWith(".css"));
		service = serveStaticFile("web");
	},
	
	Endpoint {
		path = startsWith("/about");
		
		service(Request request, Response response)
				=> AboutController(request, response);
	},
	Endpoint {
		path = startsWith("/");
		
		service(Request request, Response response)
				=> IndexController(request, response).renderView();
	}
};