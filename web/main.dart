
import 'package:polymer/polymer.dart';

void main() {
  // Init polymer.
  initPolymer();
  
}

@initMethod
void postPolymerBoot() {
  print('Polymer init complete.');
}