// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scene_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SceneStepModel {

 int get durationMs; List<DmxCommandModel> get commands;
/// Create a copy of SceneStepModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SceneStepModelCopyWith<SceneStepModel> get copyWith => _$SceneStepModelCopyWithImpl<SceneStepModel>(this as SceneStepModel, _$identity);

  /// Serializes this SceneStepModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SceneStepModel&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&const DeepCollectionEquality().equals(other.commands, commands));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,durationMs,const DeepCollectionEquality().hash(commands));

@override
String toString() {
  return 'SceneStepModel(durationMs: $durationMs, commands: $commands)';
}


}

/// @nodoc
abstract mixin class $SceneStepModelCopyWith<$Res>  {
  factory $SceneStepModelCopyWith(SceneStepModel value, $Res Function(SceneStepModel) _then) = _$SceneStepModelCopyWithImpl;
@useResult
$Res call({
 int durationMs, List<DmxCommandModel> commands
});




}
/// @nodoc
class _$SceneStepModelCopyWithImpl<$Res>
    implements $SceneStepModelCopyWith<$Res> {
  _$SceneStepModelCopyWithImpl(this._self, this._then);

  final SceneStepModel _self;
  final $Res Function(SceneStepModel) _then;

/// Create a copy of SceneStepModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? durationMs = null,Object? commands = null,}) {
  return _then(_self.copyWith(
durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,commands: null == commands ? _self.commands : commands // ignore: cast_nullable_to_non_nullable
as List<DmxCommandModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SceneStepModel].
extension SceneStepModelPatterns on SceneStepModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SceneStepModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SceneStepModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SceneStepModel value)  $default,){
final _that = this;
switch (_that) {
case _SceneStepModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SceneStepModel value)?  $default,){
final _that = this;
switch (_that) {
case _SceneStepModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int durationMs,  List<DmxCommandModel> commands)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SceneStepModel() when $default != null:
return $default(_that.durationMs,_that.commands);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int durationMs,  List<DmxCommandModel> commands)  $default,) {final _that = this;
switch (_that) {
case _SceneStepModel():
return $default(_that.durationMs,_that.commands);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int durationMs,  List<DmxCommandModel> commands)?  $default,) {final _that = this;
switch (_that) {
case _SceneStepModel() when $default != null:
return $default(_that.durationMs,_that.commands);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SceneStepModel implements SceneStepModel {
  const _SceneStepModel({required this.durationMs, required final  List<DmxCommandModel> commands}): _commands = commands;
  factory _SceneStepModel.fromJson(Map<String, dynamic> json) => _$SceneStepModelFromJson(json);

@override final  int durationMs;
 final  List<DmxCommandModel> _commands;
@override List<DmxCommandModel> get commands {
  if (_commands is EqualUnmodifiableListView) return _commands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_commands);
}


/// Create a copy of SceneStepModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SceneStepModelCopyWith<_SceneStepModel> get copyWith => __$SceneStepModelCopyWithImpl<_SceneStepModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SceneStepModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SceneStepModel&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&const DeepCollectionEquality().equals(other._commands, _commands));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,durationMs,const DeepCollectionEquality().hash(_commands));

@override
String toString() {
  return 'SceneStepModel(durationMs: $durationMs, commands: $commands)';
}


}

/// @nodoc
abstract mixin class _$SceneStepModelCopyWith<$Res> implements $SceneStepModelCopyWith<$Res> {
  factory _$SceneStepModelCopyWith(_SceneStepModel value, $Res Function(_SceneStepModel) _then) = __$SceneStepModelCopyWithImpl;
@override @useResult
$Res call({
 int durationMs, List<DmxCommandModel> commands
});




}
/// @nodoc
class __$SceneStepModelCopyWithImpl<$Res>
    implements _$SceneStepModelCopyWith<$Res> {
  __$SceneStepModelCopyWithImpl(this._self, this._then);

  final _SceneStepModel _self;
  final $Res Function(_SceneStepModel) _then;

/// Create a copy of SceneStepModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? durationMs = null,Object? commands = null,}) {
  return _then(_SceneStepModel(
durationMs: null == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int,commands: null == commands ? _self._commands : commands // ignore: cast_nullable_to_non_nullable
as List<DmxCommandModel>,
  ));
}


}

// dart format on
