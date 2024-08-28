import 'package:test_app/domain/models/event.dart';

extension Search on List<EventModel> {
  sortEvents({required int count, required DateTime selectedTime}) {
    List<EventModel> selected = [];
    for (int i = 0; i < length; i++) {
      if (this[i].time?.split(' ').first ==
          selectedTime.toString().split(' ').first) {
        selected.add(this[i]);
        if (selected.length == count) {
          return selected;
        }
      }
    }
    return selected;
  }
}
