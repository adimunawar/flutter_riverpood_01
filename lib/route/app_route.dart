import 'package:flutter_riverpood_01/features/home/view/home_page.dart';
import 'package:flutter_riverpood_01/features/joke/view/joke_page.dart';
import 'package:flutter_riverpood_01/route/routes.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.joke: (context) => const JokePage(),
    // Routes.product: (context) => const ProductsPage(),
    // Routes.favourite: (context) => const FavouriteProductsPage(),
  };
}
