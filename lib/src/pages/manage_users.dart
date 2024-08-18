import 'package:flutter/material.dart';

class ManageUsers extends StatelessWidget {
  const ManageUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 38.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Manage Users'),
        centerTitle: true,
        toolbarHeight: 100.0,
      ),
      body: const Center(
        child: Text('Manage Users'),
      ),
    );
  }
}