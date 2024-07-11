import 'package:dartz/dartz.dart';
import 'package:route_task/features/home/data/models/product_model.dart';

abstract class ProductRepo {
  Future<Either<String, List<ProductModel>>> getProducts();
}
