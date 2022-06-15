// GENERATED CODE - DO NOT MODIFY BY HAND

part of geolocation_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeolocationState extends GeolocationState {
  @override
  final LocationPoint? point;

  factory _$GeolocationState(
          [void Function(GeolocationStateBuilder)? updates]) =>
      (new GeolocationStateBuilder()..update(updates))._build();

  _$GeolocationState._({this.point}) : super._();

  @override
  GeolocationState rebuild(void Function(GeolocationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeolocationStateBuilder toBuilder() =>
      new GeolocationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeolocationState && point == other.point;
  }

  @override
  int get hashCode {
    return $jf($jc(0, point.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeolocationState')
          ..add('point', point))
        .toString();
  }
}

class GeolocationStateBuilder
    implements Builder<GeolocationState, GeolocationStateBuilder> {
  _$GeolocationState? _$v;

  LocationPoint? _point;
  LocationPoint? get point => _$this._point;
  set point(LocationPoint? point) => _$this._point = point;

  GeolocationStateBuilder();

  GeolocationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _point = $v.point;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeolocationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeolocationState;
  }

  @override
  void update(void Function(GeolocationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeolocationState build() => _build();

  _$GeolocationState _build() {
    final _$result = _$v ?? new _$GeolocationState._(point: point);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
