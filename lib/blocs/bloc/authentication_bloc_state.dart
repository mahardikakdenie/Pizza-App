part of 'authentication_bloc_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user, // Make user nullable
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(MyUser user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final MyUser? user; // Use nullable type MyUser?

  @override
  List<Object?> get props => [status, user]; // Use nullable Object? for props
}
