// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmx_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DmxPacketModel {

 int get address; List<int> get byteData; int? get index;
/// Create a copy of DmxPacketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DmxPacketModelCopyWith<DmxPacketModel> get copyWith => _$DmxPacketModelCopyWithImpl<DmxPacketModel>(this as DmxPacketModel, _$identity);

  /// Serializes this DmxPacketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DmxPacketModel&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.byteData, byteData)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,const DeepCollectionEquality().hash(byteData),index);

@override
String toString() {
  return 'DmxPacketModel(address: $address, byteData: $byteData, index: $index)';
}


}

/// @nodoc
abstract mixin class $DmxPacketModelCopyWith<$Res>  {
  factory $DmxPacketModelCopyWith(DmxPacketModel value, $Res Function(DmxPacketModel) _then) = _$DmxPacketModelCopyWithImpl;
@useResult
$Res call({
 int address, List<int> byteData, int? index
});




}
/// @nodoc
class _$DmxPacketModelCopyWithImpl<$Res>
    implements $DmxPacketModelCopyWith<$Res> {
  _$DmxPacketModelCopyWithImpl(this._self, this._then);

  final DmxPacketModel _self;
  final $Res Function(DmxPacketModel) _then;

/// Create a copy of DmxPacketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? byteData = null,Object? index = freezed,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,byteData: null == byteData ? _self.byteData : byteData // ignore: cast_nullable_to_non_nullable
as List<int>,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DmxPacketModel].
extension DmxPacketModelPatterns on DmxPacketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DmxPacketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DmxPacketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DmxPacketModel value)  $default,){
final _that = this;
switch (_that) {
case _DmxPacketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DmxPacketModel value)?  $default,){
final _that = this;
switch (_that) {
case _DmxPacketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int address,  List<int> byteData,  int? index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DmxPacketModel() when $default != null:
return $default(_that.address,_that.byteData,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int address,  List<int> byteData,  int? index)  $default,) {final _that = this;
switch (_that) {
case _DmxPacketModel():
return $default(_that.address,_that.byteData,_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int address,  List<int> byteData,  int? index)?  $default,) {final _that = this;
switch (_that) {
case _DmxPacketModel() when $default != null:
return $default(_that.address,_that.byteData,_that.index);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DmxPacketModel implements DmxPacketModel {
  const _DmxPacketModel({required this.address, required final  List<int> byteData, this.index}): _byteData = byteData;
  factory _DmxPacketModel.fromJson(Map<String, dynamic> json) => _$DmxPacketModelFromJson(json);

@override final  int address;
 final  List<int> _byteData;
@override List<int> get byteData {
  if (_byteData is EqualUnmodifiableListView) return _byteData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byteData);
}

@override final  int? index;

/// Create a copy of DmxPacketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DmxPacketModelCopyWith<_DmxPacketModel> get copyWith => __$DmxPacketModelCopyWithImpl<_DmxPacketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DmxPacketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DmxPacketModel&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._byteData, _byteData)&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,const DeepCollectionEquality().hash(_byteData),index);

@override
String toString() {
  return 'DmxPacketModel(address: $address, byteData: $byteData, index: $index)';
}


}

/// @nodoc
abstract mixin class _$DmxPacketModelCopyWith<$Res> implements $DmxPacketModelCopyWith<$Res> {
  factory _$DmxPacketModelCopyWith(_DmxPacketModel value, $Res Function(_DmxPacketModel) _then) = __$DmxPacketModelCopyWithImpl;
@override @useResult
$Res call({
 int address, List<int> byteData, int? index
});




}
/// @nodoc
class __$DmxPacketModelCopyWithImpl<$Res>
    implements _$DmxPacketModelCopyWith<$Res> {
  __$DmxPacketModelCopyWithImpl(this._self, this._then);

  final _DmxPacketModel _self;
  final $Res Function(_DmxPacketModel) _then;

/// Create a copy of DmxPacketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? byteData = null,Object? index = freezed,}) {
  return _then(_DmxPacketModel(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as int,byteData: null == byteData ? _self._byteData : byteData // ignore: cast_nullable_to_non_nullable
as List<int>,index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
