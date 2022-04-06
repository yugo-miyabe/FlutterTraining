abstract class Result<T> {
  Result.success(T value) {
    Success(value);
  }

  Result.failure(AppException exception) {
    Failure(exception);
  }
//factory Result.success(T value) => Success(value);
//factory Result.failure(AppException exception) => Failure(exception);
}

class Success<T> implements Result<T> {
  final T value;

  Success(this.value);
}

class Failure<T> implements Result<T> {
  final AppException exception;

  Failure(this.exception);
}

abstract class AppException {}
