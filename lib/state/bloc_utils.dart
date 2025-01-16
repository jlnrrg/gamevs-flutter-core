import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:stream_transform/stream_transform.dart';

EventTransformer<T> throttle<T>(Duration duration) {
  return (events, mapper) =>
      sequential<T>().call(events.throttle(duration), mapper);
}

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) =>
      events.debounce(duration, leading: true).switchMap(mapper);
}
