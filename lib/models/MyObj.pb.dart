///
//  Generated code. Do not modify.
//  source: lib/models/MyObj.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MyObj extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MyObj', package: const $pb.PackageName('modles'), createEmptyInstance: create)
    ..a<$core.int>(1, 'number', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  MyObj._() : super();
  factory MyObj() => create();
  factory MyObj.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyObj.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MyObj clone() => MyObj()..mergeFromMessage(this);
  MyObj copyWith(void Function(MyObj) updates) => super.copyWith((message) => updates(message as MyObj));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MyObj create() => MyObj._();
  MyObj createEmptyInstance() => create();
  static $pb.PbList<MyObj> createRepeated() => $pb.PbList<MyObj>();
  @$core.pragma('dart2js:noInline')
  static MyObj getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyObj>(create);
  static MyObj _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get number => $_getIZ(0);
  @$pb.TagNumber(1)
  set number($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Result', package: const $pb.PackageName('modles'), createEmptyInstance: create)
    ..pc<MyObj>(1, 'items', $pb.PbFieldType.PM, subBuilder: MyObj.create)
    ..hasRequiredFields = false
  ;

  Result._() : super();
  factory Result() => create();
  factory Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Result clone() => Result()..mergeFromMessage(this);
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Result create() => Result._();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  @$core.pragma('dart2js:noInline')
  static Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Result>(create);
  static Result _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MyObj> get items => $_getList(0);
}

