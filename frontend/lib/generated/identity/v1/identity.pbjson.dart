// This is a generated file - do not edit.
//
// Generated from identity/v1/identity.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userRoleDescriptor instead')
const UserRole$json = {
  '1': 'UserRole',
  '2': [
    {'1': 'USER_ROLE_UNSPECIFIED', '2': 0},
    {'1': 'USER_ROLE_THERAPIST', '2': 1},
    {'1': 'USER_ROLE_PATIENT', '2': 2},
  ],
};

/// Descriptor for `UserRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userRoleDescriptor = $convert.base64Decode(
    'CghVc2VyUm9sZRIZChVVU0VSX1JPTEVfVU5TUEVDSUZJRUQQABIXChNVU0VSX1JPTEVfVEhFUk'
    'FQSVNUEAESFQoRVVNFUl9ST0xFX1BBVElFTlQQAg==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'role',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.identity.v1.UserRole',
      '10': 'role'
    },
    {'1': 'organization_id', '3': 3, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'firebase_uid', '3': 4, '4': 1, '5': 9, '10': 'firebaseUid'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone_number', '3': 6, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'is_email_verified', '3': 7, '4': 1, '5': 8, '10': 'isEmailVerified'},
    {'1': 'first_name', '3': 8, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 9, '4': 1, '5': 9, '10': 'lastName'},
    {
      '1': 'professional_title',
      '3': 10,
      '4': 1,
      '5': 9,
      '10': 'professionalTitle'
    },
    {
      '1': 'credentials_number',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'credentialsNumber'
    },
    {'1': 'ui_language', '3': 12, '4': 1, '5': 9, '10': 'uiLanguage'},
    {'1': 'timezone', '3': 13, '4': 1, '5': 9, '10': 'timezone'},
    {'1': 'has_accepted_tos', '3': 14, '4': 1, '5': 8, '10': 'hasAcceptedTos'},
    {
      '1': 'created_at',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIpCgRyb2xlGAIgASgOMhUuaWRlbnRpdHkudjEuVXNlcl'
    'JvbGVSBHJvbGUSJwoPb3JnYW5pemF0aW9uX2lkGAMgASgJUg5vcmdhbml6YXRpb25JZBIhCgxm'
    'aXJlYmFzZV91aWQYBCABKAlSC2ZpcmViYXNlVWlkEhQKBWVtYWlsGAUgASgJUgVlbWFpbBIhCg'
    'xwaG9uZV9udW1iZXIYBiABKAlSC3Bob25lTnVtYmVyEioKEWlzX2VtYWlsX3ZlcmlmaWVkGAcg'
    'ASgIUg9pc0VtYWlsVmVyaWZpZWQSHQoKZmlyc3RfbmFtZRgIIAEoCVIJZmlyc3ROYW1lEhsKCW'
    'xhc3RfbmFtZRgJIAEoCVIIbGFzdE5hbWUSLQoScHJvZmVzc2lvbmFsX3RpdGxlGAogASgJUhFw'
    'cm9mZXNzaW9uYWxUaXRsZRItChJjcmVkZW50aWFsc19udW1iZXIYCyABKAlSEWNyZWRlbnRpYW'
    'xzTnVtYmVyEh8KC3VpX2xhbmd1YWdlGAwgASgJUgp1aUxhbmd1YWdlEhoKCHRpbWV6b25lGA0g'
    'ASgJUgh0aW1lem9uZRIoChBoYXNfYWNjZXB0ZWRfdG9zGA4gASgIUg5oYXNBY2NlcHRlZFRvcx'
    'I5CgpjcmVhdGVkX2F0GA8gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRl'
    'ZEF0');

@$core.Deprecated('Use userContextDescriptor instead')
const UserContext$json = {
  '1': 'UserContext',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'firebase_uid', '3': 2, '4': 1, '5': 9, '10': 'firebaseUid'},
    {
      '1': 'role',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.identity.v1.UserRole',
      '10': 'role'
    },
    {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `UserContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userContextDescriptor = $convert.base64Decode(
    'CgtVc2VyQ29udGV4dBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSIQoMZmlyZWJhc2VfdWlkGA'
    'IgASgJUgtmaXJlYmFzZVVpZBIpCgRyb2xlGAMgASgOMhUuaWRlbnRpdHkudjEuVXNlclJvbGVS'
    'BHJvbGUSJwoPb3JnYW5pemF0aW9uX2lkGAQgASgJUg5vcmdhbml6YXRpb25JZBIUCgVlbWFpbB'
    'gFIAEoCVIFZW1haWw=');

@$core.Deprecated('Use validateTokenRequestDescriptor instead')
const ValidateTokenRequest$json = {
  '1': 'ValidateTokenRequest',
  '2': [
    {'1': 'firebase_id_token', '3': 1, '4': 1, '5': 9, '10': 'firebaseIdToken'},
  ],
};

/// Descriptor for `ValidateTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateTokenRequestDescriptor = $convert.base64Decode(
    'ChRWYWxpZGF0ZVRva2VuUmVxdWVzdBIqChFmaXJlYmFzZV9pZF90b2tlbhgBIAEoCVIPZmlyZW'
    'Jhc2VJZFRva2Vu');

@$core.Deprecated('Use validateTokenResponseDescriptor instead')
const ValidateTokenResponse$json = {
  '1': 'ValidateTokenResponse',
  '2': [
    {
      '1': 'context',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.identity.v1.UserContext',
      '10': 'context'
    },
  ],
};

/// Descriptor for `ValidateTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateTokenResponseDescriptor = $convert.base64Decode(
    'ChVWYWxpZGF0ZVRva2VuUmVzcG9uc2USMgoHY29udGV4dBgBIAEoCzIYLmlkZW50aXR5LnYxLl'
    'VzZXJDb250ZXh0Ugdjb250ZXh0');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert
    .base64Decode('Cg5HZXRVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQ=');

@$core.Deprecated('Use getUserResponseDescriptor instead')
const GetUserResponse$json = {
  '1': 'GetUserResponse',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.identity.v1.User',
      '10': 'user'
    },
  ],
};

/// Descriptor for `GetUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRVc2VyUmVzcG9uc2USJQoEdXNlchgBIAEoCzIRLmlkZW50aXR5LnYxLlVzZXJSBHVzZX'
    'I=');

@$core.Deprecated('Use getUserByFirebaseUIDRequestDescriptor instead')
const GetUserByFirebaseUIDRequest$json = {
  '1': 'GetUserByFirebaseUIDRequest',
  '2': [
    {'1': 'firebase_uid', '3': 1, '4': 1, '5': 9, '10': 'firebaseUid'},
  ],
};

/// Descriptor for `GetUserByFirebaseUIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserByFirebaseUIDRequestDescriptor =
    $convert.base64Decode(
        'ChtHZXRVc2VyQnlGaXJlYmFzZVVJRFJlcXVlc3QSIQoMZmlyZWJhc2VfdWlkGAEgASgJUgtmaX'
        'JlYmFzZVVpZA==');

@$core.Deprecated('Use getUserByFirebaseUIDResponseDescriptor instead')
const GetUserByFirebaseUIDResponse$json = {
  '1': 'GetUserByFirebaseUIDResponse',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.identity.v1.User',
      '10': 'user'
    },
  ],
};

/// Descriptor for `GetUserByFirebaseUIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserByFirebaseUIDResponseDescriptor =
    $convert.base64Decode(
        'ChxHZXRVc2VyQnlGaXJlYmFzZVVJRFJlc3BvbnNlEiUKBHVzZXIYASABKAsyES5pZGVudGl0eS'
        '52MS5Vc2VyUgR1c2Vy');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'firebase_uid', '3': 1, '4': 1, '5': 9, '10': 'firebaseUid'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {
      '1': 'role',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.identity.v1.UserRole',
      '10': 'role'
    },
    {'1': 'first_name', '3': 4, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 5, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'ui_language', '3': 6, '4': 1, '5': 9, '10': 'uiLanguage'},
    {'1': 'timezone', '3': 7, '4': 1, '5': 9, '10': 'timezone'},
    {'1': 'has_accepted_tos', '3': 8, '4': 1, '5': 8, '10': 'hasAcceptedTos'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIhCgxmaXJlYmFzZV91aWQYASABKAlSC2ZpcmViYXNlVWlkEh'
    'QKBWVtYWlsGAIgASgJUgVlbWFpbBIpCgRyb2xlGAMgASgOMhUuaWRlbnRpdHkudjEuVXNlclJv'
    'bGVSBHJvbGUSHQoKZmlyc3RfbmFtZRgEIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgFIA'
    'EoCVIIbGFzdE5hbWUSHwoLdWlfbGFuZ3VhZ2UYBiABKAlSCnVpTGFuZ3VhZ2USGgoIdGltZXpv'
    'bmUYByABKAlSCHRpbWV6b25lEigKEGhhc19hY2NlcHRlZF90b3MYCCABKAhSDmhhc0FjY2VwdG'
    'VkVG9z');

@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = {
  '1': 'CreateUserResponse',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.identity.v1.User',
      '10': 'user'
    },
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVVc2VyUmVzcG9uc2USJQoEdXNlchgBIAEoCzIRLmlkZW50aXR5LnYxLlVzZXJSBH'
    'VzZXI=');

@$core.Deprecated('Use updateProfileRequestDescriptor instead')
const UpdateProfileRequest$json = {
  '1': 'UpdateProfileRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {
      '1': 'professional_title',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'professionalTitle'
    },
    {
      '1': 'credentials_number',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'credentialsNumber'
    },
    {'1': 'biography', '3': 6, '4': 1, '5': 9, '10': 'biography'},
    {'1': 'phone_number', '3': 7, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

/// Descriptor for `UpdateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9maWxlUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSHQoKZmlyc3'
    'RfbmFtZRgCIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgDIAEoCVIIbGFzdE5hbWUSLQoS'
    'cHJvZmVzc2lvbmFsX3RpdGxlGAQgASgJUhFwcm9mZXNzaW9uYWxUaXRsZRItChJjcmVkZW50aW'
    'Fsc19udW1iZXIYBSABKAlSEWNyZWRlbnRpYWxzTnVtYmVyEhwKCWJpb2dyYXBoeRgGIAEoCVIJ'
    'YmlvZ3JhcGh5EiEKDHBob25lX251bWJlchgHIAEoCVILcGhvbmVOdW1iZXI=');

@$core.Deprecated('Use updateProfileResponseDescriptor instead')
const UpdateProfileResponse$json = {
  '1': 'UpdateProfileResponse',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.identity.v1.User',
      '10': 'user'
    },
  ],
};

/// Descriptor for `UpdateProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQcm9maWxlUmVzcG9uc2USJQoEdXNlchgBIAEoCzIRLmlkZW50aXR5LnYxLlVzZX'
    'JSBHVzZXI=');

@$core.Deprecated('Use checkPermissionRequestDescriptor instead')
const CheckPermissionRequest$json = {
  '1': 'CheckPermissionRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'resource_type', '3': 2, '4': 1, '5': 9, '10': 'resourceType'},
    {'1': 'resource_id', '3': 3, '4': 1, '5': 9, '10': 'resourceId'},
    {'1': 'action', '3': 4, '4': 1, '5': 9, '10': 'action'},
  ],
};

/// Descriptor for `CheckPermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkPermissionRequestDescriptor = $convert.base64Decode(
    'ChZDaGVja1Blcm1pc3Npb25SZXF1ZXN0EhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIjCg1yZX'
    'NvdXJjZV90eXBlGAIgASgJUgxyZXNvdXJjZVR5cGUSHwoLcmVzb3VyY2VfaWQYAyABKAlSCnJl'
    'c291cmNlSWQSFgoGYWN0aW9uGAQgASgJUgZhY3Rpb24=');

@$core.Deprecated('Use checkPermissionResponseDescriptor instead')
const CheckPermissionResponse$json = {
  '1': 'CheckPermissionResponse',
  '2': [
    {'1': 'allowed', '3': 1, '4': 1, '5': 8, '10': 'allowed'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `CheckPermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkPermissionResponseDescriptor =
    $convert.base64Decode(
        'ChdDaGVja1Blcm1pc3Npb25SZXNwb25zZRIYCgdhbGxvd2VkGAEgASgIUgdhbGxvd2VkEhYKBn'
        'JlYXNvbhgCIAEoCVIGcmVhc29u');

@$core.Deprecated('Use healthCheckRequestDescriptor instead')
const HealthCheckRequest$json = {
  '1': 'HealthCheckRequest',
};

/// Descriptor for `HealthCheckRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthCheckRequestDescriptor =
    $convert.base64Decode('ChJIZWFsdGhDaGVja1JlcXVlc3Q=');

@$core.Deprecated('Use healthCheckResponseDescriptor instead')
const HealthCheckResponse$json = {
  '1': 'HealthCheckResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `HealthCheckResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthCheckResponseDescriptor = $convert.base64Decode(
    'ChNIZWFsdGhDaGVja1Jlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEhgKB3ZlcnNpb2'
    '4YAiABKAlSB3ZlcnNpb24=');
