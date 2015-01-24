import ceylon.net.http.server {

	Request,
	Response
}
import ceylog.platform {

	Controller
}

shared class AboutController(
	Request request, 
	Response response) 
		extends Controller(request, response) {
	
	shared actual void renderView() {}
	
}