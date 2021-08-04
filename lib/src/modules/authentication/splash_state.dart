abstract class SplashState {}

class SplashStateEmpty implements SplashState {}

class SplashStateError implements SplashState {
  final String errorMessage;
  SplashStateError({
    required this.errorMessage,
  });
}

class SplashStateLoading implements SplashState {}

class SplashStateLogged implements SplashState {}
