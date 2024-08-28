part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.setDateTime(DateTime selectedDateTime) = SetDateTime;

  const factory HomeEvent.setColor(int value) = SetColor;

  const factory HomeEvent.getEvents() = GetEvents;

  const factory HomeEvent.addEvent(EventModel event, VoidCallback onSuccess) =
      AddEvent;
  const factory HomeEvent.updateEvent(EventModel event, VoidCallback onSuccess) =
      UpdateEvent;
  const factory HomeEvent.loadMore() =
      LoadMore;

  const factory HomeEvent.deleteEvent(
      EventModel event, VoidCallback onSuccess) = DeleteEvent;
}
