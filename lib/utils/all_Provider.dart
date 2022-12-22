import 'package:jeu/presentation/screens/SecondPage/viewmodel/second_page_viewmodel.dart';
import 'package:jeu/presentation/screens/firstPage/viewmodel/first_page_viewmodel/first_page_viewmodel.dart';
import 'package:provider/provider.dart';

import '../app/app.dart';
import '../presentation/viewmodel/viewmodel.dart';

class AllProvider {
  static MultiProvider providers = MultiProvider(providers: [
    ChangeNotifierProvider<FirstPageViewModel>(
      create: (_) => FirstPageViewModel()),
    ChangeNotifierProvider<SecondPageViewModel>(
        create: (_) => SecondPageViewModel()),
    ChangeNotifierProvider<ViewModel>(
        create: (_) => ViewModel()),
      ],
      child: const MyApp(),
    );
}
