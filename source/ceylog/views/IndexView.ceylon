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
	
	"Pulls any children together and passes to parent
	 renderTemplate and returns to controller"
	shared Html renderTemplate() => parentView.renderTemplate;
}