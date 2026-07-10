import 'package:flutter/material.dart';

import '../models/user.dart';
import '../screens/profile_screen.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 8,
      ),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        leading: CircleAvatar(
          radius: 34,
          backgroundColor: Colors.teal.shade100,
          backgroundImage: NetworkImage(
            "https://i.pravatar.cc/150?img=${user.id}",
          ),
        ),

        title: Text(
          user.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: Colors.teal.shade400,
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProfileScreen(
                user: user,
              ),
            ),
          );
        },
      ),
    );
  }
}