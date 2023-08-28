part of 'category_list_bloc.dart';

@freezed
class CategoryListState with _$CategoryListState {
  const factory CategoryListState.initial() = _Initial;
  const factory CategoryListState.loading() = _Loading;
  const factory CategoryListState.loaded(List<String> categories) = _Loaded;
  const factory CategoryListState.error() = _Error;
}
