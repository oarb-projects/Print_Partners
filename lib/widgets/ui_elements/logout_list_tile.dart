import 'package:flutter/material.dart';

class LogoutListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.lock,
        color: Colors.orange.shade600,
      ),
      title: Text("Cerrar sesion"),
      onTap: () {
        // Navigator.pushNamed(context, '/calendar');
          Navigator.pushReplacementNamed(context, '/detail');
      },
    );
  }
}
