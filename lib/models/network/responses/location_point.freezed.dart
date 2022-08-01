// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationPoint _$LocationPointFromJson(Map<String, dynamic> json) {
  return _LocationPoint.fromJson(json);
}

/// @nodoc
class _$LocationPointTearOff {
  const _$LocationPointTearOff();

  _LocationPoint call({required double lat, required double lon}) {
    return _LocationPoint(
      lat: lat,
      lon: lon,
    );
  }

  LocationPoint fromJson(Map<String, Object> json) {
    return LocationPoint.fromJson(json);
  }
}

/// @nodoc
const $LocationPoint = _$LocationPointTearOff();

/// @nodoc
mixin _$LocationPoint {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationPointCopyWith<LocationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPointCopyWith<$Res> {
  factory $LocationPointCopyWith(
          LocationPoint value, $Res Function(LocationPoint) then) =
      _$LocationPointCopyWithImpl<$Res>;
  $Res call({double lat, double lon});
}

/// @nodoc
class _$LocationPointCopyWithImpl<$Res>
    implements $LocationPointCopyWith<$Res> {
  _$LocationPointCopyWithImpl(this._value, this._then);

  final LocationPoint _value;
  // ignore: unused_field
  final $Res Function(LocationPoint) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationPointCopyWith<$Res>
    implements $LocationPointCopyWith<$Res> {
  factory _$LocationPointCopyWith(
          _LocationPoint value, $Res Function(_LocationPoint) then) =
      __$LocationPointCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lon});
}

/// @nodoc
class __$LocationPointCopyWithImpl<$Res>
    extends _$LocationPointCopyWithImpl<$Res>
    implements _$LocationPointCopyWith<$Res> {
  __$LocationPointCopyWithImpl(
      _LocationPoint _value, $Res Function(_LocationPoint) _then)
      : super(_value, (v) => _then(v as _LocationPoint));

  @override
  _LocationPoint get _value => super._value as _LocationPoint;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_LocationPoint(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationPoint implements _LocationPoint {
  _$_LocationPoint({required this.lat, required this.lon});

  factory _$_LocationPoint.fromJson(Map<String, dynamic> json) =>
      _$$_LocationPointFromJson(json);

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'LocationPoint(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationPoint &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon);

  @JsonKey(ignore: true)
  @override
  _$LocationPointCopyWith<_LocationPoint> get copyWith =>
      __$LocationPointCopyWithImpl<_LocationPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationPointToJson(this);
  }
}

abstract class _LocationPoint implements LocationPoint {
  factory _LocationPoint({required double lat, required double lon}) =
      _$_LocationPoint;

  factory _LocationPoint.fromJson(Map<String, dynamic> json) =
      _$_LocationPoint.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationPointCopyWith<_LocationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
