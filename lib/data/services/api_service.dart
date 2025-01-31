
import 'dart:convert';

import 'package:interview/data/models/post_model.dart';
import 'package:http/http.dart' as http;
import 'package:interview/data/models/user_model.dart';

class UserApiService{
  Future<List<User>> fetchUsers() async {

    final baseUrl = "https://jsonplaceholder.typicode.com";
    final response=await http.get(Uri.parse("$baseUrl/users"));
    if(response.statusCode==200){
      final List<dynamic> data =jsonDecode(response.body);
      return data.map((json)=> User.fromJson(json)).toList();
    }else{
      throw Exception("Failed to load categories");
    }
  }

  Future<List<PostModel>> fetchUsersById(int id) async {

    final baseUrl = "https://jsonplaceholder.typicode.com/posts?";
    final response=await http.get(Uri.parse("$baseUrl/userId=$id"));
    if(response.statusCode==200){
      final List<dynamic> data =jsonDecode(response.body);
      return data.map((json)=> PostModel.fromJson(json)).toList();
    }else{
      throw Exception("Failed to load categories");
    }
  }
}
