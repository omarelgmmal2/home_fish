import 'package:flutter/material.dart';
import 'package:home_fish/core/design/routes.dart';
import 'package:home_fish/home/pages/main/delivery_items.dart';
import 'package:home_fish/home/pages/main/screens/rice_and_casserole.dart';
import 'package:home_fish/home/pages/main/screens/salads.dart';
import 'package:home_fish/home/pages/main/screens/sandwiches.dart';
import 'package:home_fish/home/pages/main/screens/special_orders.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: Routes.splashRoute,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch(settings.name){
          case Routes.deliveryItemRoute:
            builder = (BuildContext context) => const DeliveryAllItemsScreen();
            case Routes.sandwichesRoute:
            builder = (BuildContext _) => const SandwichesScreen();
          case Routes.riceAndCasseroleRoute:
            builder = (BuildContext _) => const RiceAndCasseroleScreen();
          case Routes.saladsRoute:
            builder = (BuildContext _) => const SaladsScreen();
          case Routes.specialOrdersRoute:
            builder = (BuildContext _) => const SpecialOrdersScreen();
          default:
            throw Exception("Invalid route: ${settings.name}",);
        }
        return MaterialPageRoute<void>(builder: builder,settings: settings);
      },
    );
  }
}
