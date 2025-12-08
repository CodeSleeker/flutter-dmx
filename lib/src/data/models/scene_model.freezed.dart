// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scene_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SceneModel {

 int get id; String get name; List<SceneStepModel> get steps; bool get loop;
/// Create a copy of SceneModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SceneModelCopyWith<SceneModel> get copyWith => _$SceneModelCopyWithImpl<SceneModel>(this as SceneModel, _$identity);

  /// Serializes this SceneModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SceneModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.loop, loop) || other.loop == loop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(steps),loop);

@override
String toString() {
  return 'SceneModel(id: $id, name: $name, steps: $steps, loop: $loop)';
}


}

/// @nodoc
abstract mixin class $SceneModelCopyWith<$Res>  {
  factory $SceneModelCopyWith(SceneModel value, $Res Function(SceneModel) _then) = _$SceneModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<SceneStepModel> steps, bool loop
});




}
/// @nodoc
class _$SceneModelCopyWithImpl<$Res>
    implements $SceneModelCopyWith<$Res> {
  _$SceneModelCopyWithImpl(this._self, this._then);

  final SceneModel _self;
  final $Res Function(SceneModel) _then;

/// Create a copy of SceneModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? steps = null,Object? loop = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<SceneStepModel>,loop: null == loop ? _self.loop : loop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SceneModel].
extension SceneModelPatterns on SceneModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SceneModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SceneModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SceneModel value)  $default,){
final _that = this;
switch (_that) {
case _SceneModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SceneModel value)?  $default,){
final _that = this;
switch (_that) {
case _SceneModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<SceneStepModel> steps,  bool loop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SceneModel() when $default != null:
return $default(_that.id,_that.name,_that.steps,_that.loop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<SceneStepModel> steps,  bool loop)  $default,) {final _that = this;
switch (_that) {
case _SceneModel():
return $default(_that.id,_that.name,_that.steps,_that.loop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<SceneStepModel> steps,  bool loop)?  $default,) {final _that = this;
switch (_that) {
case _SceneModel() when $default != null:
return $default(_that.id,_that.name,_that.steps,_that.loop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SceneModel implements SceneModel {
  const _SceneModel({required this.id, required this.name, required final  List<SceneStepModel> steps, required this.loop}): _steps = steps;
  factory _SceneModel.fromJson(Map<String, dynamic> json) => _$SceneModelFromJson(json);

@override final  int id;
@override final  String name;
 final  List<SceneStepModel> _steps;
@override List<SceneStepModel> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override final  bool loop;

/// Create a copy of SceneModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SceneModelCopyWith<_SceneModel> get copyWith => __$SceneModelCopyWithImpl<_SceneModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SceneModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SceneModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.loop, loop) || other.loop == loop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_steps),loop);

@override
String toString() {
  return 'SceneModel(id: $id, name: $name, steps: $steps, loop: $loop)';
}


}

/// @nodoc
abstract mixin class _$SceneModelCopyWith<$Res> implements $SceneModelCopyWith<$Res> {
  factory _$SceneModelCopyWith(_SceneModel value, $Res Function(_SceneModel) _then) = __$SceneModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<SceneStepModel> steps, bool loop
});




}
/// @nodoc
class __$SceneModelCopyWithImpl<$Res>
    implements _$SceneModelCopyWith<$Res> {
  __$SceneModelCopyWithImpl(this._self, this._then);

  final _SceneModel _self;
  final $Res Function(_SceneModel) _then;

/// Create a copy of SceneModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? steps = null,Object? loop = null,}) {
  return _then(_SceneModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<SceneStepModel>,loop: null == loop ? _self.loop : loop // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
