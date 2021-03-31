import 'package:custom_questions_test/locator.dart';
import 'package:custom_questions_test/routing/route_names.dart';
import 'package:custom_questions_test/routing/router.dart';
import 'package:custom_questions_test/services/navigation_service.dart';
import 'package:custom_questions_test/views/layout_template.dart';
import 'package:flutter/material.dart';
import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  setupLocator();
  configureApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
