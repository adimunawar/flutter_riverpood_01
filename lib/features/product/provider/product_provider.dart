import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpood_01/core/shared_provider/shared_provider.dart';
import 'package:flutter_riverpood_01/features/product/data/api/product_api.dart';
import 'package:flutter_riverpood_01/features/product/data/repository/product_repository.dart';
import 'package:flutter_riverpood_01/features/product/provider/product_state_notifier.dart';

import '../data/models/product_model.dart';

final productApiProvider = Provider<ProductApi>((ref) {
  return ProductApi(ref.read(dioClientProvider));
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.read(productApiProvider));
});

final productProvider =
    StateNotifierProvider<ProductsNotifier, List<ProductModel>>((ref) {
  return ProductsNotifier(ref: ref);
});

final isLoadingProductsProvider = StateProvider<bool>((ref) {
  return true;
});
