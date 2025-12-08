// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmx_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DmxCommandModel {

 int get brightness; List<int> get color; int? get index; int? get id; String? get area; String? get name;
/// Create a copy of DmxCommandModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DmxCommandModelCopyWith<DmxCommandModel> get copyWith => _$DmxCommandModelCopyWithImpl<DmxCommandModel>(this as DmxCommandModel, _$identity);

  /// Serializes this DmxCommandModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DmxCommandModel&&(identical(other.brightness, brightness) || other.brightness == brightness)&&const DeepCollectionEquality().equals(other.color, color)&&(identical(other.index, index) || other.index == index)&&(identical(other.id, id) || other.id == id)&&(identical(other.area, area) || other.area == area)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brightness,const DeepCollectionEquality().hash(color),index,id,area,name);

@override
String toString() {
  return 'DmxCommandModel(brightness: $brightness, color: $color, index: $index, id: $id, area: $area, name: $name)';
}


}

/// @nodoc
abstract mixin class $DmxCommandModelCopyWith<$Res>  {
  factory $DmxCommandModelCopyWith(DmxCommandModel value, $Res Function(DmxCommandModel) _then) = _$DmxCommandModelCopyWithImpl;
@useResult
$Res call({
 int brightness, List<int> color, int? index, int? id, String? area, String? name
});




}
/// @nodoc
class _$DmxCommandModelCopyWithImpl<$Res>
    implements $DmxCommandModelCopyWith<$Res> {
  _$DmxCommandModelCopyWithImpl(this._self, this._then);

  final DmxCommandModel _self;
  final $Res Function(DmxCommandModel) _then;

/// Create a copy of DmxCommandModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brightness = null,Object? color = null,Object? index = freezed,Object? id = freezed,Object? area = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as List<int>,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DmxCommandModel].
extension DmxCommandModelPatterns on DmxCommandModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DmxCommandModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DmxCommandModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DmxCommandModel value)  $default,){
final _that = this;
switch (_that) {
case _DmxCommandModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DmxCommandModel value)?  $default,){
final _that = this;
switch (_that) {
case _DmxCommandModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int brightness,  List<int> color,  int? index,  int? id,  String? area,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DmxCommandModel() when $default != null:
return $default(_that.brightness,_that.color,_that.index,_that.id,_that.area,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int brightness,  List<int> color,  int? index,  int? id,  String? area,  String? name)  $default,) {final _that = this;
switch (_that) {
case _DmxCommandModel():
return $default(_that.brightness,_that.color,_that.index,_that.id,_that.area,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int brightness,  List<int> color,  int? index,  int? id,  String? area,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _DmxCommandModel() when $default != null:
return $default(_that.brightness,_that.color,_that.index,_that.id,_that.area,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DmxCommandModel implements DmxCommandModel {
  const _DmxCommandModel({required this.brightness, required final  List<int> color, this.index, this.id, this.area, this.name}): _color = color;
  factory _DmxCommandModel.fromJson(Map<String, dynamic> json) => _$DmxCommandModelFromJson(json);

@override final  int brightness;
 final  List<int> _color;
@override List<int> get color {
  if (_color is EqualUnmodifiableListView) return _color;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_color);
}

@override final  int? index;
@override final  int? id;
@override final  String? area;
@override final  String? name;

/// Create a copy of DmxCommandModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DmxCommandModelCopyWith<_DmxCommandModel> get copyWith => __$DmxCommandModelCopyWithImpl<_DmxCommandModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DmxCommandModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DmxCommandModel&&(identical(other.brightness, brightness) || other.brightness == brightness)&&const DeepCollectionEquality().equals(other._color, _color)&&(identical(other.index, index) || other.index == index)&&(identical(other.id, id) || other.id == id)&&(identical(other.area, area) || other.area == area)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brightness,const DeepCollectionEquality().hash(_color),index,id,area,name);

@override
String toString() {
  return 'DmxCommandModel(brightness: $brightness, color: $color, index: $index, id: $id, area: $area, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DmxCommandModelCopyWith<$Res> implements $DmxCommandModelCopyWith<$Res> {
  factory _$DmxCommandModelCopyWith(_DmxCommandModel value, $Res Function(_DmxCommandModel) _then) = __$DmxCommandModelCopyWithImpl;
@override @useResult
$Res call({
 int brightness, List<int> color, int? index, int? id, String? area, String? name
});




}
/// @nodoc
class __$DmxCommandModelCopyWithImpl<$Res>
    implements _$DmxCommandModelCopyWith<$Res> {
  __$DmxCommandModelCopyWithImpl(this._self, this._then);

  final _DmxCommandModel _self;
  final $Res Function(_DmxCommandModel) _then;

/// Create a copy of DmxCommandModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brightness = null,Object? color = null,Object? index = freezed,Object? id = freezed,Object? area = freezed,Object? name = freezed,}) {
  return _then(_DmxCommandModel(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self._color : color // ignore: cast_nullable_to_non_nullable
as List<int>,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
