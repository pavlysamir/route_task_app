part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class GetAllProductLoadingState extends ProductState {}

final class GetAllProductSuccessState extends ProductState {}

final class GetAllProductErrorState extends ProductState {
  final String errMessage;
  GetAllProductErrorState({required this.errMessage});
}

final class SearchResultsState extends ProductState {}
