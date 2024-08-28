// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetDateTimeImplCopyWith<$Res> {
  factory _$$SetDateTimeImplCopyWith(
          _$SetDateTimeImpl value, $Res Function(_$SetDateTimeImpl) then) =
      __$$SetDateTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDateTime});
}

/// @nodoc
class __$$SetDateTimeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetDateTimeImpl>
    implements _$$SetDateTimeImplCopyWith<$Res> {
  __$$SetDateTimeImplCopyWithImpl(
      _$SetDateTimeImpl _value, $Res Function(_$SetDateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = null,
  }) {
    return _then(_$SetDateTimeImpl(
      null == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SetDateTimeImpl implements SetDateTime {
  const _$SetDateTimeImpl(this.selectedDateTime);

  @override
  final DateTime selectedDateTime;

  @override
  String toString() {
    return 'HomeEvent.setDateTime(selectedDateTime: $selectedDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDateTimeImpl &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDateTimeImplCopyWith<_$SetDateTimeImpl> get copyWith =>
      __$$SetDateTimeImplCopyWithImpl<_$SetDateTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return setDateTime(selectedDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return setDateTime?.call(selectedDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (setDateTime != null) {
      return setDateTime(selectedDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return setDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return setDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (setDateTime != null) {
      return setDateTime(this);
    }
    return orElse();
  }
}

abstract class SetDateTime implements HomeEvent {
  const factory SetDateTime(final DateTime selectedDateTime) =
      _$SetDateTimeImpl;

  DateTime get selectedDateTime;
  @JsonKey(ignore: true)
  _$$SetDateTimeImplCopyWith<_$SetDateTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetColorImplCopyWith<$Res> {
  factory _$$SetColorImplCopyWith(
          _$SetColorImpl value, $Res Function(_$SetColorImpl) then) =
      __$$SetColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$SetColorImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetColorImpl>
    implements _$$SetColorImplCopyWith<$Res> {
  __$$SetColorImplCopyWithImpl(
      _$SetColorImpl _value, $Res Function(_$SetColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SetColorImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetColorImpl implements SetColor {
  const _$SetColorImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'HomeEvent.setColor(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetColorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetColorImplCopyWith<_$SetColorImpl> get copyWith =>
      __$$SetColorImplCopyWithImpl<_$SetColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return setColor(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return setColor?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (setColor != null) {
      return setColor(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return setColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return setColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (setColor != null) {
      return setColor(this);
    }
    return orElse();
  }
}

abstract class SetColor implements HomeEvent {
  const factory SetColor(final int value) = _$SetColorImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$SetColorImplCopyWith<_$SetColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEventsImplCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
          _$GetEventsImpl value, $Res Function(_$GetEventsImpl) then) =
      __$$GetEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
      _$GetEventsImpl _value, $Res Function(_$GetEventsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEventsImpl implements GetEvents {
  const _$GetEventsImpl();

  @override
  String toString() {
    return 'HomeEvent.getEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return getEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return getEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class GetEvents implements HomeEvent {
  const factory GetEvents() = _$GetEventsImpl;
}

/// @nodoc
abstract class _$$AddEventImplCopyWith<$Res> {
  factory _$$AddEventImplCopyWith(
          _$AddEventImpl value, $Res Function(_$AddEventImpl) then) =
      __$$AddEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel event, VoidCallback onSuccess});
}

/// @nodoc
class __$$AddEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddEventImpl>
    implements _$$AddEventImplCopyWith<$Res> {
  __$$AddEventImplCopyWithImpl(
      _$AddEventImpl _value, $Res Function(_$AddEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? onSuccess = null,
  }) {
    return _then(_$AddEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$AddEventImpl implements AddEvent {
  const _$AddEventImpl(this.event, this.onSuccess);

  @override
  final EventModel event;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'HomeEvent.addEvent(event: $event, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      __$$AddEventImplCopyWithImpl<_$AddEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return addEvent(event, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return addEvent?.call(event, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(event, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class AddEvent implements HomeEvent {
  const factory AddEvent(final EventModel event, final VoidCallback onSuccess) =
      _$AddEventImpl;

  EventModel get event;
  VoidCallback get onSuccess;
  @JsonKey(ignore: true)
  _$$AddEventImplCopyWith<_$AddEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel event, VoidCallback onSuccess});
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? onSuccess = null,
  }) {
    return _then(_$UpdateEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$UpdateEventImpl implements UpdateEvent {
  const _$UpdateEventImpl(this.event, this.onSuccess);

  @override
  final EventModel event;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'HomeEvent.updateEvent(event: $event, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return updateEvent(event, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return updateEvent?.call(event, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(event, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateEvent implements HomeEvent {
  const factory UpdateEvent(
      final EventModel event, final VoidCallback onSuccess) = _$UpdateEventImpl;

  EventModel get event;
  VoidCallback get onSuccess;
  @JsonKey(ignore: true)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
      _$LoadMoreImpl _value, $Res Function(_$LoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreImpl implements LoadMore {
  const _$LoadMoreImpl();

  @override
  String toString() {
    return 'HomeEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMore implements HomeEvent {
  const factory LoadMore() = _$LoadMoreImpl;
}

/// @nodoc
abstract class _$$DeleteEventImplCopyWith<$Res> {
  factory _$$DeleteEventImplCopyWith(
          _$DeleteEventImpl value, $Res Function(_$DeleteEventImpl) then) =
      __$$DeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel event, VoidCallback onSuccess});
}

/// @nodoc
class __$$DeleteEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteEventImpl>
    implements _$$DeleteEventImplCopyWith<$Res> {
  __$$DeleteEventImplCopyWithImpl(
      _$DeleteEventImpl _value, $Res Function(_$DeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? onSuccess = null,
  }) {
    return _then(_$DeleteEventImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$DeleteEventImpl implements DeleteEvent {
  const _$DeleteEventImpl(this.event, this.onSuccess);

  @override
  final EventModel event;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'HomeEvent.deleteEvent(event: $event, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEventImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      __$$DeleteEventImplCopyWithImpl<_$DeleteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDateTime) setDateTime,
    required TResult Function(int value) setColor,
    required TResult Function() getEvents,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        addEvent,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        updateEvent,
    required TResult Function() loadMore,
    required TResult Function(EventModel event, VoidCallback onSuccess)
        deleteEvent,
  }) {
    return deleteEvent(event, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDateTime)? setDateTime,
    TResult? Function(int value)? setColor,
    TResult? Function()? getEvents,
    TResult? Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult? Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult? Function()? loadMore,
    TResult? Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
  }) {
    return deleteEvent?.call(event, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDateTime)? setDateTime,
    TResult Function(int value)? setColor,
    TResult Function()? getEvents,
    TResult Function(EventModel event, VoidCallback onSuccess)? addEvent,
    TResult Function(EventModel event, VoidCallback onSuccess)? updateEvent,
    TResult Function()? loadMore,
    TResult Function(EventModel event, VoidCallback onSuccess)? deleteEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(event, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDateTime value) setDateTime,
    required TResult Function(SetColor value) setColor,
    required TResult Function(GetEvents value) getEvents,
    required TResult Function(AddEvent value) addEvent,
    required TResult Function(UpdateEvent value) updateEvent,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(DeleteEvent value) deleteEvent,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDateTime value)? setDateTime,
    TResult? Function(SetColor value)? setColor,
    TResult? Function(GetEvents value)? getEvents,
    TResult? Function(AddEvent value)? addEvent,
    TResult? Function(UpdateEvent value)? updateEvent,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(DeleteEvent value)? deleteEvent,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDateTime value)? setDateTime,
    TResult Function(SetColor value)? setColor,
    TResult Function(GetEvents value)? getEvents,
    TResult Function(AddEvent value)? addEvent,
    TResult Function(UpdateEvent value)? updateEvent,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(DeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteEvent implements HomeEvent {
  const factory DeleteEvent(
      final EventModel event, final VoidCallback onSuccess) = _$DeleteEventImpl;

  EventModel get event;
  VoidCallback get onSuccess;
  @JsonKey(ignore: true)
  _$$DeleteEventImplCopyWith<_$DeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  List<EventModel> get allEvents => throw _privateConstructorUsedError;
  List<EventModel> get selectedEvents => throw _privateConstructorUsedError;
  List<Color> get colors => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {DateTime selectedDate,
      List<EventModel> allEvents,
      List<EventModel> selectedEvents,
      List<Color> colors,
      int colorValue});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? allEvents = null,
    Object? selectedEvents = null,
    Object? colors = null,
    Object? colorValue = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      allEvents: null == allEvents
          ? _value.allEvents
          : allEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      selectedEvents: null == selectedEvents
          ? _value.selectedEvents
          : selectedEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedDate,
      List<EventModel> allEvents,
      List<EventModel> selectedEvents,
      List<Color> colors,
      int colorValue});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? allEvents = null,
    Object? selectedEvents = null,
    Object? colors = null,
    Object? colorValue = null,
  }) {
    return _then(_$HomeStateImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      allEvents: null == allEvents
          ? _value._allEvents
          : allEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      selectedEvents: null == selectedEvents
          ? _value._selectedEvents
          : selectedEvents // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
      colorValue: null == colorValue
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.selectedDate,
      final List<EventModel> allEvents = const [],
      final List<EventModel> selectedEvents = const [],
      required final List<Color> colors,
      required this.colorValue})
      : _allEvents = allEvents,
        _selectedEvents = selectedEvents,
        _colors = colors;

  @override
  final DateTime selectedDate;
  final List<EventModel> _allEvents;
  @override
  @JsonKey()
  List<EventModel> get allEvents {
    if (_allEvents is EqualUnmodifiableListView) return _allEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEvents);
  }

  final List<EventModel> _selectedEvents;
  @override
  @JsonKey()
  List<EventModel> get selectedEvents {
    if (_selectedEvents is EqualUnmodifiableListView) return _selectedEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedEvents);
  }

  final List<Color> _colors;
  @override
  List<Color> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  final int colorValue;

  @override
  String toString() {
    return 'HomeState(selectedDate: $selectedDate, allEvents: $allEvents, selectedEvents: $selectedEvents, colors: $colors, colorValue: $colorValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality()
                .equals(other._allEvents, _allEvents) &&
            const DeepCollectionEquality()
                .equals(other._selectedEvents, _selectedEvents) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.colorValue, colorValue) ||
                other.colorValue == colorValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedDate,
      const DeepCollectionEquality().hash(_allEvents),
      const DeepCollectionEquality().hash(_selectedEvents),
      const DeepCollectionEquality().hash(_colors),
      colorValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final DateTime selectedDate,
      final List<EventModel> allEvents,
      final List<EventModel> selectedEvents,
      required final List<Color> colors,
      required final int colorValue}) = _$HomeStateImpl;

  @override
  DateTime get selectedDate;
  @override
  List<EventModel> get allEvents;
  @override
  List<EventModel> get selectedEvents;
  @override
  List<Color> get colors;
  @override
  int get colorValue;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
