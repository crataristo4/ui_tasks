import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/ui/home/home_page/watching_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(UI()));
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      /*  initialRoute: HomePage.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,*/
      home: Watching(false),
    );
  }
}


