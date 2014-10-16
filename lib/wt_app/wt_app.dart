
import 'package:polymer/polymer.dart';

@CustomTag('wt-app')
class WtApp extends PolymerElement {
  WtApp.created() : super.created();
  
  @published String test;
  @published String route;
  
  testChanged(oldValue){
    print('$test was $oldValue with route: $route');
  }
  
  routeChanged(oldValue){
    print('WtApp.route changed from [$oldValue] to [$route]');
  }
}

