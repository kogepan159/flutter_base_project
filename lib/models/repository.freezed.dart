// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
class _$RepositoryTearOff {
  const _$RepositoryTearOff();

// ignore: unused_element
  _Repository call({@required String name, @required int id}) {
    return _Repository(
      name: name,
      id: id,
    );
  }

// ignore: unused_element
  Repository fromJson(Map<String, Object> json) {
    return Repository.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Repository = _$RepositoryTearOff();

/// @nodoc
mixin _$Repository {
//@required String id,
  String get name;
  int get id;

  Map<String, dynamic> toJson();
  $RepositoryCopyWith<Repository> get copyWith;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res>;
  $Res call({String name, int id});
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(
          _Repository value, $Res Function(_Repository) then) =
      __$RepositoryCopyWithImpl<$Res>;
  @override
  $Res call({String name, int id});
}

/// @nodoc
class __$RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(
      _Repository _value, $Res Function(_Repository) _then)
      : super(_value, (v) => _then(v as _Repository));

  @override
  _Repository get _value => super._value as _Repository;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_Repository(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Repository implements _Repository {
  _$_Repository({@required this.name, @required this.id})
      : assert(name != null),
        assert(id != null);

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryFromJson(json);

  @override //@required String id,
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'Repository(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Repository &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$RepositoryCopyWith<_Repository> get copyWith =>
      __$RepositoryCopyWithImpl<_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryToJson(this);
  }
}

abstract class _Repository implements Repository {
  factory _Repository({@required String name, @required int id}) =
      _$_Repository;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override //@required String id,
  String get name;
  @override
  int get id;
  @override
  _$RepositoryCopyWith<_Repository> get copyWith;
}
