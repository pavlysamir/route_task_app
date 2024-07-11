import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:route_task/features/home/data/models/product_model.dart';
import 'package:route_task/features/home/data/repo/product_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(ProductInitial());

  final ProductRepo productRepo;

  static ProductCubit get(context) => BlocProvider.of(context);

  List<ProductModel> products = [];
  List<ProductModel> search = [];

  void getAllProduct() async {
    emit(GetAllProductLoadingState());

    final response = await productRepo.getProducts();
    response.fold(
      (reeMesege) => emit(GetAllProductErrorState(errMessage: reeMesege)),
      (listProducts) {
        products = listProducts;
        search = products;
        emit(GetAllProductSuccessState());
      },
    );
  }

  void searchProduct(String? value) {
    if (products.isNotEmpty) {
      if (value!.isEmpty) {
        search = products;
      } else {
        search = products
            .where((title) =>
                title.title.toLowerCase().contains(value.toLowerCase()))
            .toList();
      }
      emit(SearchResultsState());
    }
  }
}
