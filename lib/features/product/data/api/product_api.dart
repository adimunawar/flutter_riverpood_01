import 'package:flutter_riverpood_01/core/network/constant.dart/end_points.dart';
import 'package:flutter_riverpood_01/core/network/dio_client.dart';

class ProductApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  ProductApi(this._dioClient);

  Future fetchProductsApiRequest() async {
    try {
      final res = await _dioClient.get(Endpoints.product);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
