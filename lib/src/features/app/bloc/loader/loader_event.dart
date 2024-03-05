part of 'loader_bloc.dart';

@freezed
class LoaderEvent with _$LoaderEvent {
  const factory LoaderEvent.started() = _Started;
}