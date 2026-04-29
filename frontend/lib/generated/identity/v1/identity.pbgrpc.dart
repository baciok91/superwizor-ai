// This is a generated file - do not edit.
//
// Generated from identity/v1/identity.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'identity.pb.dart' as $0;

export 'identity.pb.dart';

@$pb.GrpcServiceName('identity.v1.IdentityService')
class IdentityServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  IdentityServiceClient(super.channel, {super.options, super.interceptors});

  /// Validates Firebase JWT and returns user context
  $grpc.ResponseFuture<$0.ValidateTokenResponse> validateToken(
    $0.ValidateTokenRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$validateToken, request, options: options);
  }

  /// Returns user profile by ID
  $grpc.ResponseFuture<$0.GetUserResponse> getUser(
    $0.GetUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  /// Returns user profile by Firebase UID (after login)
  $grpc.ResponseFuture<$0.GetUserByFirebaseUIDResponse> getUserByFirebaseUID(
    $0.GetUserByFirebaseUIDRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getUserByFirebaseUID, request, options: options);
  }

  /// Creates user on first login (called from Firebase Auth trigger)
  $grpc.ResponseFuture<$0.CreateUserResponse> createUser(
    $0.CreateUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  /// Updates own profile
  $grpc.ResponseFuture<$0.UpdateProfileResponse> updateProfile(
    $0.UpdateProfileRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateProfile, request, options: options);
  }

  /// RBAC: check permission on resource
  $grpc.ResponseFuture<$0.CheckPermissionResponse> checkPermission(
    $0.CheckPermissionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$checkPermission, request, options: options);
  }

  /// Health check
  $grpc.ResponseFuture<$0.HealthCheckResponse> healthCheck(
    $0.HealthCheckRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$healthCheck, request, options: options);
  }

  // method descriptors

  static final _$validateToken =
      $grpc.ClientMethod<$0.ValidateTokenRequest, $0.ValidateTokenResponse>(
          '/identity.v1.IdentityService/ValidateToken',
          ($0.ValidateTokenRequest value) => value.writeToBuffer(),
          $0.ValidateTokenResponse.fromBuffer);
  static final _$getUser =
      $grpc.ClientMethod<$0.GetUserRequest, $0.GetUserResponse>(
          '/identity.v1.IdentityService/GetUser',
          ($0.GetUserRequest value) => value.writeToBuffer(),
          $0.GetUserResponse.fromBuffer);
  static final _$getUserByFirebaseUID = $grpc.ClientMethod<
          $0.GetUserByFirebaseUIDRequest, $0.GetUserByFirebaseUIDResponse>(
      '/identity.v1.IdentityService/GetUserByFirebaseUID',
      ($0.GetUserByFirebaseUIDRequest value) => value.writeToBuffer(),
      $0.GetUserByFirebaseUIDResponse.fromBuffer);
  static final _$createUser =
      $grpc.ClientMethod<$0.CreateUserRequest, $0.CreateUserResponse>(
          '/identity.v1.IdentityService/CreateUser',
          ($0.CreateUserRequest value) => value.writeToBuffer(),
          $0.CreateUserResponse.fromBuffer);
  static final _$updateProfile =
      $grpc.ClientMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
          '/identity.v1.IdentityService/UpdateProfile',
          ($0.UpdateProfileRequest value) => value.writeToBuffer(),
          $0.UpdateProfileResponse.fromBuffer);
  static final _$checkPermission =
      $grpc.ClientMethod<$0.CheckPermissionRequest, $0.CheckPermissionResponse>(
          '/identity.v1.IdentityService/CheckPermission',
          ($0.CheckPermissionRequest value) => value.writeToBuffer(),
          $0.CheckPermissionResponse.fromBuffer);
  static final _$healthCheck =
      $grpc.ClientMethod<$0.HealthCheckRequest, $0.HealthCheckResponse>(
          '/identity.v1.IdentityService/HealthCheck',
          ($0.HealthCheckRequest value) => value.writeToBuffer(),
          $0.HealthCheckResponse.fromBuffer);
}

@$pb.GrpcServiceName('identity.v1.IdentityService')
abstract class IdentityServiceBase extends $grpc.Service {
  $core.String get $name => 'identity.v1.IdentityService';

  IdentityServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ValidateTokenRequest, $0.ValidateTokenResponse>(
            'ValidateToken',
            validateToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ValidateTokenRequest.fromBuffer(value),
            ($0.ValidateTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserRequest, $0.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserRequest.fromBuffer(value),
        ($0.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserByFirebaseUIDRequest,
            $0.GetUserByFirebaseUIDResponse>(
        'GetUserByFirebaseUID',
        getUserByFirebaseUID_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetUserByFirebaseUIDRequest.fromBuffer(value),
        ($0.GetUserByFirebaseUIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateUserRequest, $0.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateUserRequest.fromBuffer(value),
        ($0.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
            'UpdateProfile',
            updateProfile_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateProfileRequest.fromBuffer(value),
            ($0.UpdateProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckPermissionRequest,
            $0.CheckPermissionResponse>(
        'CheckPermission',
        checkPermission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CheckPermissionRequest.fromBuffer(value),
        ($0.CheckPermissionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.HealthCheckRequest, $0.HealthCheckResponse>(
            'HealthCheck',
            healthCheck_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.HealthCheckRequest.fromBuffer(value),
            ($0.HealthCheckResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ValidateTokenResponse> validateToken_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ValidateTokenRequest> $request) async {
    return validateToken($call, await $request);
  }

  $async.Future<$0.ValidateTokenResponse> validateToken(
      $grpc.ServiceCall call, $0.ValidateTokenRequest request);

  $async.Future<$0.GetUserResponse> getUser_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetUserRequest> $request) async {
    return getUser($call, await $request);
  }

  $async.Future<$0.GetUserResponse> getUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);

  $async.Future<$0.GetUserByFirebaseUIDResponse> getUserByFirebaseUID_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetUserByFirebaseUIDRequest> $request) async {
    return getUserByFirebaseUID($call, await $request);
  }

  $async.Future<$0.GetUserByFirebaseUIDResponse> getUserByFirebaseUID(
      $grpc.ServiceCall call, $0.GetUserByFirebaseUIDRequest request);

  $async.Future<$0.CreateUserResponse> createUser_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateUserRequest> $request) async {
    return createUser($call, await $request);
  }

  $async.Future<$0.CreateUserResponse> createUser(
      $grpc.ServiceCall call, $0.CreateUserRequest request);

  $async.Future<$0.UpdateProfileResponse> updateProfile_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.UpdateProfileRequest> $request) async {
    return updateProfile($call, await $request);
  }

  $async.Future<$0.UpdateProfileResponse> updateProfile(
      $grpc.ServiceCall call, $0.UpdateProfileRequest request);

  $async.Future<$0.CheckPermissionResponse> checkPermission_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CheckPermissionRequest> $request) async {
    return checkPermission($call, await $request);
  }

  $async.Future<$0.CheckPermissionResponse> checkPermission(
      $grpc.ServiceCall call, $0.CheckPermissionRequest request);

  $async.Future<$0.HealthCheckResponse> healthCheck_Pre($grpc.ServiceCall $call,
      $async.Future<$0.HealthCheckRequest> $request) async {
    return healthCheck($call, await $request);
  }

  $async.Future<$0.HealthCheckResponse> healthCheck(
      $grpc.ServiceCall call, $0.HealthCheckRequest request);
}
