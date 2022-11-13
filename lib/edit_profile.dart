import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('A - R'),
          backgroundColor: Colors.grey[200],
          elevation: 0,
          actions: const [Icon(Icons.menu_outlined)],
        ),
        body: SingleChildScrollView());
  }
}
