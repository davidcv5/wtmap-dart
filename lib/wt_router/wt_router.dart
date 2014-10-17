
import 'package:polymer/polymer.dart';
import 'package:route_hierarchical/client.dart';
import 'package:route_hierarchical/url_pattern.dart';

@CustomTag('wt-router')
class WtRouter extends PolymerElement {
  WtRouter.created() : super.created();
  
  @published String route;
  @published bool useFragment = true;
  
  Router router;
  
  void attached() {
    router = new Router(useFragment: useFragment);
    Route root = router.root;
    root.addRoute(name: 'home', defaultRoute: true, path: urlPattern(r'/(.*)'), enter: updateRoute);
    router.listen();
  }
  
  updateRoute(RouteEvent e){
    route = e.path;
  }
  
  routeChanged(oldValue){
    if(oldValue != route)
      router.gotoUrl(route);
  }
}

