import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:product_repository/product_repository.dart';

part 'get_product_event.dart';
part 'get_product_state.dart';

class GetProductBloc extends Bloc<GetProductEvent, GetProductState> {
  final ProductRepo _pizzaRepo;

  GetProductBloc(this._pizzaRepo) : super(GetProductInitial()) {
    on<GetProduct>((event, emit) async {
      emit(GetProductLoading());
      try {
        List<Product> pizzas = await _pizzaRepo.getPizzas();
        emit(GetProductSuccess(pizzas));
      } catch (e) {
        emit(GetProductFailure());
      }
    });
  }
}
