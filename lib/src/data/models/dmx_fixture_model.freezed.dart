// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmx_fixture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DmxFixtureModel {

 int get id; String get name; int get address; String get area; ColorMode get colorMode; int get channel; int? get count; AddressMode? get addressMode;
/// Create a copy of DmxFixtureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DmxFixtureModelCopyWith<DmxFixtureModel> get copyWith => _$DmxFixtureModelCopyWithImpl<DmxFixtureModel>(this as DmxFixtureModel, _$identity);

  /// Serializes this DmxFixtureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DmxFixtureModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.area, area) || other.area == area)&&(identical(other.colorMode, colorMode) || other.colorMode == colorMode)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.count, count) || other.count == count)&&(identical(other.addressMode, addressMode) || other.addressMode == addressMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,area,colorMode,channel,count,addressMode);

@override
String toString() {
  return 'DmxFixtureModel(id: $id, name: $name, address: $address, area: $area, colorMode: $colorMode, channel: $channel, count: $count, addressMode: $addressMode)';
}


}

/// @nodoc
abstract mixin class $DmxFixtureModelCopyWith<$Res>  {
  factory $DmxFixtureModelCopyWith(DmxFixtureModel value, $Res Function(DmxFixtureModel) _then) = _$DmxFixtureModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int address, String area, ColorMode colorMode, int channel, int? count, AddressMode? addressMode
});




}
/// @nodoc
class _$DmxFixtureModelCopyWithImpl<$Res>
    implements $DmxFixtureModelCopyWith<$Res> {
  _$DmxFixtureModelCopyWithImpl(this._self, this._then);

  final DmxFixtureModel _self;
  final $Res Function(DmxFixtureModel) _then;

/// Create a copy of DmxFixtureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? area = null,Object? colorMode = null,Object? channel = null,Object? count = freezed,Object? addressMode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,colorMode: null == colorMode ? _self.colorMode : colorMode // ignore: cast_nullable_to_non_nullable
as ColorMode,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as int,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,addressMode: freezed == addressMode ? _self.addressMode : addressMode // ignore: cast_nullable_to_non_nullable
as AddressMode?,
  ));
}

}


/// Adds pattern-matching-related methods to [DmxFixtureModel].
extension DmxFixtureModelPatterns on DmxFixtureModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DmxFixtureModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DmxFixtureModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DmxFixtureModel value)  $default,){
final _that = this;
switch (_that) {
case _DmxFixtureModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DmxFixtureModel value)?  $default,){
final _that = this;
switch (_that) {
case _DmxFixtureModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int address,  String area,  ColorMode colorMode,  int channel,  int? count,  AddressMode? addressMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DmxFixtureModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.area,_that.colorMode,_that.channel,_that.count,_that.addressMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int address,  String area,  ColorMode colorMode,  int channel,  int? count,  AddressMode? addressMode)  $default,) {final _that = this;
switch (_that) {
case _DmxFixtureModel():
return $default(_that.id,_that.name,_that.address,_that.area,_that.colorMode,_that.channel,_that.count,_that.addressMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int address,  String area,  ColorMode colorMode,  int channel,  int? count,  AddressMode? addressMode)?  $default,) {final _that = this;
switch (_that) {
case _DmxFixtureModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.area,_that.colorMode,_that.channel,_that.count,_that.addressMode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DmxFixtureModel implements DmxFixtureModel {
  const _DmxFixtureModel({required this.id, required this.name, required this.address, required this.area, required this.colorMode, required this.channel, this.count, this.addressMode});
  factory _DmxFixtureModel.fromJson(Map<String, dynamic> json) => _$DmxFixtureModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int address;
@override final  String area;
@override final  ColorMode colorMode;
@override final  int channel;
@override final  int? count;
@override final  AddressMode? addressMode;

/// Create a copy of DmxFixtureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DmxFixtureModelCopyWith<_DmxFixtureModel> get copyWith => __$DmxFixtureModelCopyWithImpl<_DmxFixtureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DmxFixtureModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DmxFixtureModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.area, area) || other.area == area)&&(identical(other.colorMode, colorMode) || other.colorMode == colorMode)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.count, count) || other.count == count)&&(identical(other.addressMode, addressMode) || other.addressMode == addressMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,area,colorMode,channel,count,addressMode);

@override
String toString() {
  return 'DmxFixtureModel(id: $id, name: $name, address: $address, area: $area, colorMode: $colorMode, channel: $channel, count: $count, addressMode: $addressMode)';
}


}

/// @nodoc
abstract mixin class _$DmxFixtureModelCopyWith<$Res> implements $DmxFixtureModelCopyWith<$Res> {
  factory _$DmxFixtureModelCopyWith(_DmxFixtureModel value, $Res Function(_DmxFixtureModel) _then) = __$DmxFixtureModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int address, String area, ColorMode colorMode, int channel, int? count, AddressMode? addressMode
});




}
/// @nodoc
class __$DmxFixtureModelCopyWithImpl<$Res>
    implements _$DmxFixtureModelCopyWith<$Res> {
  __$DmxFixtureModelCopyWithImpl(this._self, this._then);

  final _DmxFixtureModel _self;
  final $Res Function(_DmxFixtureModel) _then;

/// Create a copy of DmxFixtureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? area = null,Object? colorMode = null,Object? channel = null,Object? count = freezed,Object? addressMode = freezed,}) {
  return _then(_DmxFixtureModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,colorMode: null == colorMode ? _self.colorMode : colorMode // ignore: cast_nullable_to_non_nullable
as ColorMode,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as int,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,addressMode: freezed == addressMode ? _self.addressMode : addressMode // ignore: cast_nullable_to_non_nullable
as AddressMode?,
  ));
}


}

// dart format on
