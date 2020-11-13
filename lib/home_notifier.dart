import 'package:flutter/foundation.dart';
import 'package:percent_indicator_crash/home_state.dart';

class HomeNotifier extends ChangeNotifier {
  HomeState state = HomeState(0.1);

  void reloadContent() {
    state = HomeState(state.multiplier + 0.05);
    notifyListeners();
  }
}
