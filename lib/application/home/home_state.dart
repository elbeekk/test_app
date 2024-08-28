part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required DateTime selectedDate,
      @Default([]) List<EventModel> allEvents,
      @Default([]) List<EventModel> selectedEvents,
      required  List<Color> colors,
      required int colorValue}) = _HomeState;
}
