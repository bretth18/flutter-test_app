// package imports
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'model/app_state_model.dart';

void main() {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      // App state model is at the top of the widget tree to make it available throughout the app
      create: (_) => AppStateModel()..loadProducts(),
      child: TestApp(),
    ),
  );
}
