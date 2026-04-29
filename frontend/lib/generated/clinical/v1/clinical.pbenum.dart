// This is a generated file - do not edit.
//
// Generated from clinical/v1/clinical.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ProcessType extends $pb.ProtobufEnum {
  static const ProcessType PROCESS_TYPE_UNSPECIFIED =
      ProcessType._(0, _omitEnumNames ? '' : 'PROCESS_TYPE_UNSPECIFIED');
  static const ProcessType PROCESS_TYPE_INDIVIDUAL =
      ProcessType._(1, _omitEnumNames ? '' : 'PROCESS_TYPE_INDIVIDUAL');
  static const ProcessType PROCESS_TYPE_COUPLE =
      ProcessType._(2, _omitEnumNames ? '' : 'PROCESS_TYPE_COUPLE');
  static const ProcessType PROCESS_TYPE_FAMILY =
      ProcessType._(3, _omitEnumNames ? '' : 'PROCESS_TYPE_FAMILY');
  static const ProcessType PROCESS_TYPE_GROUP =
      ProcessType._(4, _omitEnumNames ? '' : 'PROCESS_TYPE_GROUP');

  static const $core.List<ProcessType> values = <ProcessType>[
    PROCESS_TYPE_UNSPECIFIED,
    PROCESS_TYPE_INDIVIDUAL,
    PROCESS_TYPE_COUPLE,
    PROCESS_TYPE_FAMILY,
    PROCESS_TYPE_GROUP,
  ];

  static final $core.List<ProcessType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ProcessType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ProcessType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
