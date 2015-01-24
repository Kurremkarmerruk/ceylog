# ceylog
A community news site for the Ceylon programming language

## Software Used

Trying to use mostly base Ceylon and Ceylon SDK modules.  I did take a stab at vert.x and io.cayla.web but vert.x was highly complex and seemed a stretch for just doing a community news site.

*   Foundation
	-   Modernizr.js
	-   Jquery
	-   placeholder.js
	-   fastclick.js
*   Ceylon SDK
	-   ceylon.html
	-   ceylon.net

## Process

I will start by just working out brute-force all the functionality of the site and then at varying increments (sometimes inspired by a need for interoperability or a new perspective on code structure) I will look back and refactor the code perhaps changing large swaths of API.  Even after ceylog is feature complete, there will surely still be much refactoring to decouple the architecture away from the app logic.  However, I find this method of programming fun as it allows me to create without thinking about code design and then abstract and compartmentalize after it works (which also can be quite fun). Ceylon's module system works really well and I've done a little refactoring already and all I had to do was add a few shared keywords (done automatically with `Ctrl`+`1`) and `right-click` > `move...` and I was done.

## Goal

To have a community news site with users, an auth process, a db with all crud ops, a voting process, and a set of acceptable post types (article, link, forum discussion, wiki page, code, etc) with varying interfaces and presentations.  

After I feel like the feature-set is mostly complete, I want to try and get this deployed somewhere at least temporarily but it would be really cool to get a permanent host somewhere.

