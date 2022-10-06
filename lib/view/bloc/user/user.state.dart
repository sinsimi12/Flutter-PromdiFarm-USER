part of 'user.cubit.dart';

@immutable
abstract class UserState {}

// Initial state
class UserInitial extends UserState {}

class AuthUserLoading extends UserState {}

// Authenticate User
class AuthUserInitial extends UserState {}

class AuthUserLoaded extends UserState {
  final String jwt;

  AuthUserLoaded({required this.jwt});
}

class AuthUserError extends UserState {
  final String msg;

  AuthUserError({required this.msg});
}

class AuthUserSuccess extends UserState {
  final String msg;

  AuthUserSuccess({required this.msg});
}

class AuthUserFail extends UserState {
  final String msg;

  AuthUserFail({required this.msg});
}

// Create User
class CreateUserInitial extends UserState {}

class CreateUserFail extends UserState {
  final String msg;

  CreateUserFail({required this.msg});
}

class CreateUserSuccess extends UserState {
  final String msg;

  CreateUserSuccess({required this.msg});
}
