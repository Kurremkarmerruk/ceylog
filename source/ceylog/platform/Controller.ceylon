import ceylon.net.http.server {

	Request,
	Response
}

"Recieves requests from router, formats and prepares response,
 sends params and other useful data to view for rendering."
shared abstract class Controller(
	Request request, Response response) {
	shared formal void renderView();
}