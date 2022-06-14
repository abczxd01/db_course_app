// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDescription _$WeatherDescriptionFromJson(Map<String, dynamic> json) {
  return _WeatherDescription.fromJson(json);
}

/// @nodoc
class _$WeatherDescriptionTearOff {
  const _$WeatherDescriptionTearOff();

  _WeatherDescription call(
      {required int id,
      required String main,
      required String description,
      required String icon}) {
    return _WeatherDescription(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }

  WeatherDescription fromJson(Map<String, Object> json) {
    return WeatherDescription.fromJson(json);
  }
}

/// @nodoc
const $WeatherDescription = _$WeatherDescriptionTearOff();

/// @nodoc
mixin _$WeatherDescription {
  int get id => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDescriptionCopyWith<WeatherDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDescriptionCopyWith<$Res> {
  factory $WeatherDescriptionCopyWith(
          WeatherDescription value, $Res Function(WeatherDescription) then) =
      _$WeatherDescriptionCopyWithImpl<$Res>;
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherDescriptionCopyWithImpl<$Res>
    implements $WeatherDescriptionCopyWith<$Res> {
  _$WeatherDescriptionCopyWithImpl(this._value, this._then);

  final WeatherDescription _value;
  // ignore: unused_field
  final $Res Function(WeatherDescription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDescriptionCopyWith<$Res>
    implements $WeatherDescriptionCopyWith<$Res> {
  factory _$WeatherDescriptionCopyWith(
          _WeatherDescription value, $Res Function(_WeatherDescription) then) =
      __$WeatherDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$WeatherDescriptionCopyWithImpl<$Res>
    extends _$WeatherDescriptionCopyWithImpl<$Res>
    implements _$WeatherDescriptionCopyWith<$Res> {
  __$WeatherDescriptionCopyWithImpl(
      _WeatherDescription _value, $Res Function(_WeatherDescription) _then)
      : super(_value, (v) => _then(v as _WeatherDescription));

  @override
  _WeatherDescription get _value => super._value as _WeatherDescription;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherDescription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDescription implements _WeatherDescription {
  _$_WeatherDescription(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory _$_WeatherDescription.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDescriptionFromJson(json);

  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherDescription(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherDescription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$WeatherDescriptionCopyWith<_WeatherDescription> get copyWith =>
      __$WeatherDescriptionCopyWithImpl<_WeatherDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDescriptionToJson(this);
  }
}

abstract class _WeatherDescription implements WeatherDescription {
  factory _WeatherDescription(
      {required int id,
      required String main,
      required String description,
      required String icon}) = _$_WeatherDescription;

  factory _WeatherDescription.fromJson(Map<String, dynamic> json) =
      _$_WeatherDescription.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get main => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherDescriptionCopyWith<_WeatherDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
