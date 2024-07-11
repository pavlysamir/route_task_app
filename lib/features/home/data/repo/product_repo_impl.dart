import 'package:dartz/dartz.dart';
import 'package:route_task/core/api/api_consumer.dart';
import 'package:route_task/core/api/end_ponits.dart';
import 'package:route_task/core/errors/exceptions.dart';
import 'package:route_task/features/home/data/models/product_model.dart';
import 'package:route_task/features/home/data/repo/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiConsumer api;
  ProductRepoImpl({required this.api});
  @override
  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      final response = await api.get(EndPoint.products);

      List<ProductModel> products = [];
      for (var product in response['products']) {
        products.add(ProductModel.fromJson(product));
      }

      return right(products);
    } on ServerException catch (e) {
      return Left(e.errModel.errorMessage!);
    }
  }
}
