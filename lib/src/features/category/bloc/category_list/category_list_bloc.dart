import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/src/features/category/domain/repository/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list_event.dart';
part 'category_list_state.dart';
part 'category_list_bloc.freezed.dart';

class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc(this._categoryRepository) : super(const _Initial()) {
    on<CategoryListEvent>(
      (event, emit) async => event.when(
        started: () async => await _getCategories(emit),
        onGetCategories: () async => await _getCategories(emit),
      ),
      transformer: sequential(),
    );
  }

  final CategoryRepository _categoryRepository;

  Future<void> _getCategories(emit) async {
    try {
      emit(const CategoryListState.loading());
      final categories = await _categoryRepository.getCategories();
      emit(CategoryListState.loaded(categories));
    } on Object {
      emit(const CategoryListState.error());
      rethrow;
    }
  }
}
