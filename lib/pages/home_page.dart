import 'package:chat_app_gg/auth/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      
      drawer: Drawer(),
    );
  }
}
