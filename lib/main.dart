
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jeu/utils/all_Provider.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(AllProvider.providers));
  runApp(AllProvider.providers);
}

