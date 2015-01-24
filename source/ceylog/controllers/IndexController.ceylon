import ceylog.platform { Controller }
import ceylon.net.http.server {

	Request,
	Response
	//Session
}
import ceylon.net.http {

	contentType
}
import ceylon.io.charset {

	utf8
}
import ceylon.html.serializer {

	NodeSerializer
}
import ceylog.views {

	IndexView
}

shared class IndexController(
	Request request, 
	Response response) 
		extends Controller(request, response) {
	
	IndexView view = IndexView();
	
	//Session session = request.session;
	//
	//String url = request.uri;
	
	shared actual void renderView() {

		response.addHeader(contentType { contentType = "text/html"; 
										 charset = utf8; });
		
		value rendered = StringBuilder();
		NodeSerializer(rendered.append)
				.serialize(view.renderTemplate());
		response.writeString(rendered.string);
	}
	
}