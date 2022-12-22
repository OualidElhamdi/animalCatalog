import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jeu/presentation/screens/firstPage/view/first_page.dart';

import '../screens/SecondPage/view/second_page.dart';



class Routes {
  static const String firstPageRoute = "/";
  static const String secondPageRoute = "/SecondPage";
}

class RouteGenerator {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[

      GoRoute(
        path: Routes.firstPageRoute ,
        builder: (BuildContext context, GoRouterState state) => const FirstPage(),
      ),
      GoRoute(
        path: Routes.secondPageRoute,
        builder: (BuildContext context, GoRouterState state) => const SecondPage(),
      ),
    ],
  );
}
