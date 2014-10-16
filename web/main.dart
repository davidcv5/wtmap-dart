
import 'package:polymer/polymer.dart';
import 'package:route_hierarchical/client.dart';

void main() {
  // Init polymer.
  initPolymer();
//  var router = new Router(useFragment: true);
//    router.root
//      ..addRoute(name: 'article', path: '/article/:articleId', enter: showArticle)
//      ..addRoute(name: 'home', defaultRoute: true, path: '/', enter: showHome);
//    router.listen();
    
}

void showHome(RouteEvent e) {
  // nothing to parse from path, since there are no groups
  print('this is home');
}

void showArticle(RouteEvent e) {
  var articleId = e.parameters['articleId'];
  // show article page with loading indicator
  // load article from server, then render article
  print('article: $articleId');
  
}

@initMethod
void postPolymerBoot() {
  print('Polymer init complete.');
}