class CustomException implements Exception {
  final String? message;

  const CustomException({this.message = '予期せぬエラーが起きました。'});

  @override
  String toString() => 'CustomException { message: $message }';
}