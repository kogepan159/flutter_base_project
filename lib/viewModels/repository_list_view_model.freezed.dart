// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RepositoryListViewState _$RepositoryListViewStateFromJson(
    Map<String, dynamic> json) {
  return _RepositoryListViewState.fromJson(json);
}

/// @nodoc
class _$RepositoryListViewStateTearOff {
  const _$RepositoryListViewStateTearOff();

// ignore: unused_element
  _RepositoryListViewState call(
      {String name = "", List<dynamic> list = const [], int count = 0}) {
    return _RepositoryListViewState(
      name: name,
      list: list,
      count: count,
    );
  }

// ignore: unused_element
  RepositoryListViewState fromJson(Map<String, Object> json) {
    return RepositoryListViewState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RepositoryListViewState = _$RepositoryListViewStateTearOff();

/// @nodoc
mixin _$RepositoryListViewState {
  String get name;
  List<dynamic> get list;
  int get count;

  Map<String, dynamic> toJson();
  $RepositoryListViewStateCopyWith<RepositoryListViewState> get copyWith;
}

/// @nodoc
abstract class $RepositoryListViewStateCopyWith<$Res> {
  factory $RepositoryListViewStateCopyWith(RepositoryListViewState value,
          $Res Function(RepositoryListViewState) then) =
      _$RepositoryListViewStateCopyWithImpl<$Res>;
  $Res call({String name, List<dynamic> list, int count});
}

/// @nodoc
class _$RepositoryListViewStateCopyWithImpl<$Res>
    implements $RepositoryListViewStateCopyWith<$Res> {
  _$RepositoryListViewStateCopyWithImpl(this._value, this._then);

  final RepositoryListViewState _value;
  // ignore: unused_field
  final $Res Function(RepositoryListViewState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object list = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      list: list == freezed ? _value.list : list as List<dynamic>,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryListViewStateCopyWith<$Res>
    implements $RepositoryListViewStateCopyWith<$Res> {
  factory _$RepositoryListViewStateCopyWith(_RepositoryListViewState value,
          $Res Function(_RepositoryListViewState) then) =
      __$RepositoryListViewStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<dynamic> list, int count});
}

/// @nodoc
class __$RepositoryListViewStateCopyWithImpl<$Res>
    extends _$RepositoryListViewStateCopyWithImpl<$Res>
    implements _$RepositoryListViewStateCopyWith<$Res> {
  __$RepositoryListViewStateCopyWithImpl(_RepositoryListViewState _value,
      $Res Function(_RepositoryListViewState) _then)
      : super(_value, (v) => _then(v as _RepositoryListViewState));

  @override
  _RepositoryListViewState get _value =>
      super._value as _RepositoryListViewState;

  @override
  $Res call({
    Object name = freezed,
    Object list = freezed,
    Object count = freezed,
  }) {
    return _then(_RepositoryListViewState(
      name: name == freezed ? _value.name : name as String,
      list: list == freezed ? _value.list : list as List<dynamic>,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RepositoryListViewState
    with DiagnosticableTreeMixin
    implements _RepositoryListViewState {
  const _$_RepositoryListViewState(
      {this.name = "", this.list = const [], this.count = 0})
      : assert(name != null),
        assert(list != null),
        assert(count != null);

  factory _$_RepositoryListViewState.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryListViewStateFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> list;
  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoryListViewState(name: $name, list: $list, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoryListViewState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepositoryListViewState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$RepositoryListViewStateCopyWith<_RepositoryListViewState> get copyWith =>
      __$RepositoryListViewStateCopyWithImpl<_RepositoryListViewState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryListViewStateToJson(this);
  }
}

abstract class _RepositoryListViewState implements RepositoryListViewState {
  const factory _RepositoryListViewState(
      {String name,
      List<dynamic> list,
      int count}) = _$_RepositoryListViewState;

  factory _RepositoryListViewState.fromJson(Map<String, dynamic> json) =
      _$_RepositoryListViewState.fromJson;

  @override
  String get name;
  @override
  List<dynamic> get list;
  @override
  int get count;
  @override
  _$RepositoryListViewStateCopyWith<_RepositoryListViewState> get copyWith;
}
