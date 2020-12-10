import 'package:http/http.dart' as http;

Future<http.Response> fetch(
    String url, String method, Map<String, String> headers) {
  Map methods = {
    "get": http.get,
    "post": http.post,
    "put": http.put,
    "patch": http.patch,
    "delete": http.delete
  };
  return methods[method](url, headers);
}
