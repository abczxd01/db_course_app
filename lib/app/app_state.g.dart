// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final GeolocationState geolocation;
  @override
  final WeatherState weather;
  @override
  final BuiltMap<Object, OperationState> operationsState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.geolocation,
      required this.weather,
      required this.operationsState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        geolocation, r'AppState', 'geolocation');
    BuiltValueNullFieldError.checkNotNull(weather, r'AppState', 'weather');
    BuiltValueNullFieldError.checkNotNull(
        operationsState, r'AppState', 'operationsState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        geolocation == other.geolocation &&
        weather == other.weather &&
        operationsState == other.operationsState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, geolocation.hashCode), weather.hashCode),
        operationsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('geolocation', geolocation)
          ..add('weather', weather)
          ..add('operationsState', operationsState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  GeolocationStateBuilder? _geolocation;
  GeolocationStateBuilder get geolocation =>
      _$this._geolocation ??= new GeolocationStateBuilder();
  set geolocation(GeolocationStateBuilder? geolocation) =>
      _$this._geolocation = geolocation;

  WeatherStateBuilder? _weather;
  WeatherStateBuilder get weather =>
      _$this._weather ??= new WeatherStateBuilder();
  set weather(WeatherStateBuilder? weather) => _$this._weather = weather;

  MapBuilder<Object, OperationState>? _operationsState;
  MapBuilder<Object, OperationState> get operationsState =>
      _$this._operationsState ??= new MapBuilder<Object, OperationState>();
  set operationsState(MapBuilder<Object, OperationState>? operationsState) =>
      _$this._operationsState = operationsState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geolocation = $v.geolocation.toBuilder();
      _weather = $v.weather.toBuilder();
      _operationsState = $v.operationsState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              geolocation: geolocation.build(),
              weather: weather.build(),
              operationsState: operationsState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geolocation';
        geolocation.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'operationsState';
        operationsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
