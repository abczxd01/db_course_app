// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityItem _$CityItemFromJson(Map<String, dynamic> json) {
  return _CityItem.fromJson(json);
}

/// @nodoc
class _$CityItemTearOff {
  const _$CityItemTearOff();

  _CityItem call(
      {required int id,
      required String name,
      required String country,
      required LocationPoint coord}) {
    return _CityItem(
      id: id,
      name: name,
      country: country,
      coord: coord,
    );
  }

  CityItem fromJson(Map<String, Object> json) {
    return CityItem.fromJson(json);
  }
}

/// @nodoc
const $CityItem = _$CityItemTearOff();

/// @nodoc
mixin _$CityItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  LocationPoint get coord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityItemCopyWith<CityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityItemCopyWith<$Res> {
  factory $CityItemCopyWith(CityItem value, $Res Function(CityItem) then) =
      _$CityItemCopyWithImpl<$Res>;
  $Res call({int id, String name, String country, LocationPoint coord});

  $LocationPointCopyWith<$Res> get coord;
}

/// @nodoc
class _$CityItemCopyWithImpl<$Res> implements $CityItemCopyWith<$Res> {
  _$CityItemCopyWithImpl(this._value, this._then);

  final CityItem _value;
  // ignore: unused_field
  final $Res Function(CityItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? coord = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
    ));
  }

  @override
  $LocationPointCopyWith<$Res> get coord {
    return $LocationPointCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value));
    });
  }
}

/// @nodoc
abstract class _$CityItemCopyWith<$Res> implements $CityItemCopyWith<$Res> {
  factory _$CityItemCopyWith(_CityItem value, $Res Function(_CityItem) then) =
      __$CityItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String country, LocationPoint coord});

  @override
  $LocationPointCopyWith<$Res> get coord;
}

/// @nodoc
class __$CityItemCopyWithImpl<$Res> extends _$CityItemCopyWithImpl<$Res>
    implements _$CityItemCopyWith<$Res> {
  __$CityItemCopyWithImpl(_CityItem _value, $Res Function(_CityItem) _then)
      : super(_value, (v) => _then(v as _CityItem));

  @override
  _CityItem get _value => super._value as _CityItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? coord = freezed,
  }) {
    return _then(_CityItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityItem implements _CityItem {
  _$_CityItem(
      {required this.id,
      required this.name,
      required this.country,
      required this.coord});

  factory _$_CityItem.fromJson(Map<String, dynamic> json) =>
      _$$_CityItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  final LocationPoint coord;

  @override
  String toString() {
    return 'CityItem(id: $id, name: $name, country: $country, coord: $coord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.coord, coord) ||
                const DeepCollectionEquality().equals(other.coord, coord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(coord);

  @JsonKey(ignore: true)
  @override
  _$CityItemCopyWith<_CityItem> get copyWith =>
      __$CityItemCopyWithImpl<_CityItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityItemToJson(this);
  }
}

abstract class _CityItem implements CityItem {
  factory _CityItem(
      {required int id,
      required String name,
      required String country,
      required LocationPoint coord}) = _$_CityItem;

  factory _CityItem.fromJson(Map<String, dynamic> json) = _$_CityItem.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  LocationPoint get coord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityItemCopyWith<_CityItem> get copyWith =>
      throw _privateConstructorUsedError;
}
