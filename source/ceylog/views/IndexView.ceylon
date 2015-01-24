import ceylon.html {

	Div,
	Snippet,
	Html
}
import ceylog.platform {

	View
}

shared class IndexView() extends View() satisfies Snippet<Div> {
	
	value parentView = BaseView();
	
	content => Div {
		classNames = "row";
		Div {
			Div {
				classNames = "large-9 columns";
				nonstandardAttributes = [
					"role"->"content"
				];
				//TODO: Add articles here
			}
		}
	};
	
	"Pass rendering back to base template"
	shared Html renderTemplate() => parentView.renderTemplate;
}