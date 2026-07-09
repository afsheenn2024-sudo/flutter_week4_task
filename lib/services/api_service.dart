import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user.dart';

class ApiService {
  // API URL
  static const String apiUrl =
      'https://jsonplaceholder.typicode.com/users';

  // Fetch users from API
  static Future<List<User>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      // Request successful
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);

        return jsonData
            .map((user) => User.fromJson(user))
            .toList();
      }

      // Server returned an error
      throw Exception(
        'Server Error (${response.statusCode})',
      );
    } catch (e) {
      // Network or unexpected error
      throw Exception(
        'Unable to fetch users. Please check your internet connection.',
      );
    }
  }
}