import 'package:flutter/material.dart';

class ServicesListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.room_service,
        color: Colors.orange.shade600,
      ),
      title: Text("Mis Servicios"),
      onTap: () {
        // Navigator.pushNamed(context, '/services');
        Navigator.pushReplacementNamed(context, '/services');
      },
    );
  }
}
