part of 'loader_bloc.dart';

@freezed
class LoaderState with _$LoaderState {
  const factory LoaderState.initial() = _Initial;
  const factory LoaderState.isLogged(bool isLogged) = _NoAuth;
  const factory LoaderState.noVerifiedEmail() = _NoVerifiedEmail;
}
