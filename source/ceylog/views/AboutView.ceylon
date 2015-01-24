import ceylog.platform {

	View
}
import ceylon.html {

	Div,
	Snippet
}
class AboutView() extends View() satisfies Snippet<Div>{
	
	shared actual Div content => Div {};
	
}