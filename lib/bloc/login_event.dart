import 'package:equatable/equatable.dart';

abstract class LoginEvents extends Equatable {
  const LoginEvents();

  @override
  List<Object> get props => [];
}

class EmailChanged extends LoginEvents {
  const EmailChanged({required this.email});
  final String email;
  @override
 List<Object> get props => [email];
}
