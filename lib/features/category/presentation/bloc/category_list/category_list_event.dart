part of 'category_list_bloc.dart';

@freezed
class CategoryListEvent with _$CategoryListEvent {
  const factory CategoryListEvent.started() = _Started;
  const factory CategoryListEvent.onGetCategories() = _OnGetCategories;
}