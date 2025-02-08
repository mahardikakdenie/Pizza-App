part of 'authentication_bloc_bloc.dart';

sealed class AuthenticationBlocEvent extends Equatable {
  const AuthenticationBlocEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationUserChanged extends AuthenticationBlocEvent {
  final MyUser? user;
  const AuthenticationUserChanged(this.user);
}

class MyUser {}
