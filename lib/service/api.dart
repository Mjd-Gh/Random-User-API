import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:random_user_api/model/user_model.dart';

class UserService {
  Future<User> getUser() async {
    const url = 'https://randomuser.me/api/';
    final uri = Uri.parse(url);
    final request = await http.get(uri);
    final responseAsJson = json.decode(request.body);
    final res = User.fromJson(responseAsJson);
    return res;
  }
}
