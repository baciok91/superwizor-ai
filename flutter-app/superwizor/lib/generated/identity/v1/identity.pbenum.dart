// This is a generated file - do not edit.
//
// Generated from identity/v1/identity.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserRole extends $pb.ProtobufEnum {
  static const UserRole USER_ROLE_UNSPECIFIED =
      UserRole._(0, _omitEnumNames ? '' : 'USER_ROLE_UNSPECIFIED');
  static const UserRole USER_ROLE_THERAPIST =
      UserRole._(1, _omitEnumNames ? '' : 'USER_ROLE_THERAPIST');
  static const UserRole USER_ROLE_PATIENT =
      UserRole._(2, _omitEnumNames ? '' : 'USER_ROLE_PATIENT');

  static const $core.List<UserRole> values = <UserRole>[
    USER_ROLE_UNSPECIFIED,
    USER_ROLE_THERAPIST,
    USER_ROLE_PATIENT,
  ];

  static final $core.List<UserRole?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static UserRole? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UserRole._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
