import 'package:flutter/material.dart';
import 'package:home_fish/home/pages/main/delivery_items.dart';
import 'package:home_fish/home/pages/main/screens/sandwiches.dart';
import 'package:home_fish/home/pages/orders/rice.dart';
import '../../auth/login/view.dart';
import '../../auth/register/view.dart';
import '../../auth/splash/view.dart';
import '../../home/pages/main/screens/hall_items.dart';
import '../../home/pages/main/screens/rice_and_casserole.dart';
import '../../home/pages/main/screens/salads.dart';
import '../../home/pages/main/screens/special_orders.dart';
import '../../home/pages/orders/cart.dart';
import '../../home/pages/orders/my_orders.dart';
import '../../home/pages/orders/products.dart';
import '../../home/pages/orders/sandwich.dart';
import '../../home/view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String homeRoute = "/home";
  static const String deliveryItemRoute = "/all_items";
  static const String hallItemRoute = "/all_items";
  static const String sandwichesRoute = "/sandwiches";
  static const String sandwichRoute = "/sandwich";
  static const String riceRoute = "/rice";
  static const String riceAndCasseroleRoute = "/rice_and_casserole";
  static const String saladsRoute = "/salads";
  static const String specialOrdersRoute = "/special_orders";
  static const String cartRoute = "/cart";
  static const String productsRoute = "/products";
  static const String myOrderRoute = "/my_order";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
        case Routes.deliveryItemRoute:
        return MaterialPageRoute(
          builder: (context) => const DeliveryAllItemsScreen(),
        );
        case Routes.hallItemRoute:
        return MaterialPageRoute(
          builder: (context) => const HallAllItemsScreen(),
        );
        case Routes.sandwichesRoute:
        return MaterialPageRoute(
          builder: (context) => const SandwichesScreen(),
        );
        case Routes.sandwichRoute:
        return MaterialPageRoute(
          builder: (context) => const SandwichScreen(),
        );
        case Routes.riceRoute:
        return MaterialPageRoute(
          builder: (context) => const RiceScreen(),
        );
        case Routes.riceAndCasseroleRoute:
        return MaterialPageRoute(
          builder: (context) => const RiceAndCasseroleScreen(),
        );
        case Routes.saladsRoute:
        return MaterialPageRoute(
          builder: (context) => const SaladsScreen(),
        );
        case Routes.specialOrdersRoute:
        return MaterialPageRoute(
          builder: (context) => const SpecialOrdersScreen(),
        );
        case Routes.cartRoute:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
        case Routes.productsRoute:
        return MaterialPageRoute(
          builder: (context) => const ProductsScreen(),
        );
        case Routes.myOrderRoute:
        return MaterialPageRoute(
          builder: (context) => const MyOrdersScreen(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "No Route Found",
          ),
        ),
        body: const Center(
          child: Text(
            "No Route Found",
          ),
        ),
      ),
    );
  }
}