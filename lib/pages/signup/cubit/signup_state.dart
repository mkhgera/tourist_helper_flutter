part of 'signup_cubit.dart';

enum SignupStatus { initial, submitting, success, error }

class SignupState extends Equatable {
  final String email;
  final String password;
  final SignupStatus status;
  final Failure failure;

  bool get isFormValid => email.isNotEmpty && password.isNotEmpty;

  const SignupState({
    @required this.email,
    @required this.password,
    @required this.status,
    @required this.failure,
  });

  factory SignupState.initial() {
    return SignupState(
      email: '',
      password: '',
      status: SignupStatus.initial,
      failure: const Failure(),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [email, password, status, failure];

  SignupState copyWith({
    String email,
    String password,
    SignupStatus status,
    Failure failure,
  }) {
    return SignupState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
