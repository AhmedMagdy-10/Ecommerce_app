import 'dart:io';

checInternetConnection() async {
  try {
    var connect = await InternetAddress.lookup('google.com');

    if (connect.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
