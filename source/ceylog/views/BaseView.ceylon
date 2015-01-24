import ceylog.platform { View }
import ceylon.html {

	Html,
	html5,
	Body,
	Head,
	Meta,
	CharsetMeta,
	CssLink,
	Script,
	javascript,
	A,
	Div,
	Ul,
	Li,
	Snippet,
	Small,
	H1,
	Hr
}

class BaseView() extends View() satisfies Snippet<Html>{

	class ChildView() => IndexView();

	class NavBar(String title, String subtitle,
		{<String -> String>+} buttons) 
			satisfies Snippet<Div>{
		
		content => Div { classNames = "row";
			Div { classNames = "large-12 columns";
				Div { classNames = "nav-bar right";
					Ul { classNames = "button-group";
						for (name -> url in buttons) {
							Li {
								A {
									name;
									url;
									classNames = "button";
								}
							}
						}
					}
				},
				H1 { title; Small(subtitle) },
				Hr()
			}
		};
		
	}
	
	content => Html {
		//no way to add 'no-js' class
		html5;
		Head {
			title = "Ceylon Blog";
			Meta("viewport", 
				 "width=device-width, initial-scale=1.0"),
			CharsetMeta("utf-8"),
			CssLink("css/foundation.css"),
			Script("js/vendor/modernizr.js", javascript)
		};
		Body {
			// Add template here
			
			NavBar {
				title = "Blog";
				subtitle = "This is my blog. it's awesome.";
				"Link 1" -> "#",
				"Link 2" -> "#",
				"Link 3" -> "#",
				"Link 4" -> "#"
			},
			
			ChildView(),
			
			Script("js/vendor/jquery.js", javascript),
			Script("js/foundation.min.js", javascript)
		};
	};
	
	"BaseView returns content with child snippets returned inside
	 the content attribute declaration. Function just typecasts
	 down to Html type for [[NodeSerializer.serialize]]"
	shared Html renderTemplate {
		if (is Html result = content) { return result; }
		else { return Html(); }
	}
	
}