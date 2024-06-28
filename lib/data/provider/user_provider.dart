import 'package:dio/dio.dart';
import 'package:repository_provider/data/model/user_model.dart';

class UserProvider {
  final Dio _dio = Dio(BaseOptions(baseUrl: "https://reqres.in/api/"));
  Future<UserModel> getUsers() async {
    try {
      final response = await _dio.get("users?page=1");
      return UserModel.fromJson(response.data);
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
