
import 'package:polymer/polymer.dart';
import 'package:wt_map/wt_app/wt_app.dart';

void main() {
  // Init polymer.
  initPolymer();
  
  // Register Polymer components (ones that are actually used in the app).
  registerWidgetsWithPolymer();
}

@initMethod
void postPolymerBoot() {
  print('Polymer init complete.');
}

void registerWidgetsWithPolymer() {
  //upgradePaperToast();
  Polymer.register('wt-app', WtApp);
}
