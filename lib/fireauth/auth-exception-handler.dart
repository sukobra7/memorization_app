import 'package:memorization_app/enum/auth_result_status.dart';

class AuthExceptionHandler {
  static generateExceptionMessage(exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.invalidEmail:
        errorMessage = "メールアドレスが不正な形式になっているようです。";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "パスワードが間違っています。";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "このメールアドレスのユーザーは存在しません。";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "このメールを受け取ったユーザーは無効になっています。";
        break;
      case AuthResultStatus.tooManyRequests:
        errorMessage = "リクエストが多すぎます。後でもう一度お試しください。";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "EmailとPasswordを使ったサインインが有効になっていません。";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage = "メールはすでに登録されています。ログインするか、パスワードを再設定してください。";
        break;
      default:
        errorMessage = "未定義のエラーが発生しました。";
    }
    return errorMessage;
  }
}
