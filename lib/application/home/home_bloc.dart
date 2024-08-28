import 'dart:async';
import 'dart:ffi';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/domain/services/extensions.dart';
import 'package:test_app/domain/services/local_storage.dart';

import '../../domain/models/event.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeState(
            selectedDate: DateTime.now(),
            colors: [
              Colors.red,
              Colors.blue,
              Colors.orange,
            ],
            colorValue: Colors.red.value,
          ),
        ) {
    on<SetDateTime>((event, emit) {
      emit(
        state.copyWith(
            selectedDate: event.selectedDateTime,
            selectedEvents: state.allEvents
                .sortEvents(count: 3, selectedTime: event.selectedDateTime)),
      );
    });
    on<LoadMore>((event, emit) async {
      emit(
        state.copyWith(
          selectedEvents: state.allEvents.sortEvents(
            count: state.selectedEvents.length * 2,
            selectedTime: state.selectedDate,
          ),
        ),
      );
    });
    on<SetColor>((event, emit) {
      emit(
        state.copyWith(colorValue: event.value),
      );
    });
    on<GetEvents>((event, emit) async {
      final res = await LocalStorage.getEvents();
      emit(
        state.copyWith(
            allEvents: res,
            selectedEvents:
                res.sortEvents(count: 3, selectedTime: state.selectedDate)),
      );
    });
    on<AddEvent>((event, emit) async {
      await LocalStorage.addEvent(
        event.event,
      ).whenComplete(
        () {
          event.onSuccess.call();
        },
      );
    });
    on<UpdateEvent>((event, emit) async {
      await LocalStorage.updateEvent(
        event.event,
      ).whenComplete(
        () {
          event.onSuccess.call();
        },
      );
    });
    on<DeleteEvent>((event, emit) async {
      await LocalStorage.deleteEvent(
        event.event,
      ).whenComplete(
        () {
          event.onSuccess.call();
        },
      );
    });
  }
}
